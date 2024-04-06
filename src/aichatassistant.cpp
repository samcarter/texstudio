#include "aichatassistant.h"
#include <QNetworkReply>
#include <QNetworkProxyFactory>
#include <QJsonDocument>
#include <QJsonArray>

AIChatAssistant::AIChatAssistant(QWidget *parent)
    : QDialog{parent}
{
    QTreeView *treeView=new QTreeView();
    textBrowser=new QTextBrowser();
    auto *hlBrowser=new QSplitter();
    hlBrowser->addWidget(treeView);
    hlBrowser->addWidget(textBrowser);

    leEntry=new QLineEdit();
    btSend=new QPushButton(tr("Send"));
    connect(btSend,&QPushButton::clicked,this,&AIChatAssistant::slotSend);
    auto *hlayout=new QHBoxLayout();
    hlayout->addWidget(leEntry);
    hlayout->addWidget(btSend);

    auto *layout=new QVBoxLayout();
    layout->addWidget(hlBrowser);
    layout->addLayout(hlayout);
    setLayout(layout);
    setWindowTitle(tr("AI chat assistant"));
    config=dynamic_cast<ConfigManager *>(ConfigManagerInterface::getInstance());
    networkManager = new QNetworkAccessManager();
}

AIChatAssistant::~AIChatAssistant()
{
    if (networkManager) {
        networkManager->deleteLater();
        networkManager=nullptr;
    }
}
/*!
 * \brief send question to ai provider
 */
void AIChatAssistant::slotSend()
{
    QString question=leEntry->text();
    if(question.isEmpty()){
        return;
    }
    if(!networkManager){
        networkManager = new QNetworkAccessManager();
        if(!networkManager) return;
    }

    QString url("https://api.mistral.ai/v1/chat/completions");
    //QString data="{\"model\": \"mistral-small-latest\", \"messages\": [{\"role\": \"user\", \"content\": \"Who is the most renowned French painter?\"}]}";

    QJsonObject dd;
    dd["model"]=config->ai_preferredModel;
    QJsonObject ja_message;
    ja_message["role"]="user";
    ja_message["content"]=question;
    QJsonArray ja_messages;
    ja_messages.append(ja_message);

    dd["messages"]=ja_messages;

    QJsonDocument jsonDoc(dd);
    QString data=jsonDoc.toJson();

    QNetworkRequest request = QNetworkRequest(QUrl(url));
    request.setRawHeader("User-Agent", "TeXstudio Chat Assistant");
    request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");
    request.setRawHeader("Accept", "application/json");
    request.setRawHeader("Authorization", QString("Bearer %1").arg(config->ai_apikey).toUtf8());
    QNetworkReply *reply = networkManager->post(request,data.toUtf8());
    connect(networkManager, &QNetworkAccessManager::finished, this, &AIChatAssistant::onRequestCompleted);
#if QT_VERSION_MAJOR<6
    connect(reply, SIGNAL(error(QNetworkReply::NetworkError)), this, SLOT(onRequestError(QNetworkReply::NetworkError)));
#else
    connect(reply, &QNetworkReply::errorOccurred, this, &AIChatAssistant::onRequestError);
#endif

}
/*!
 * \brief handle communication error with ai provider
 */
void AIChatAssistant::onRequestError(QNetworkReply::NetworkError code)
{
    qDebug()<<"Error:"<<code;
}
/*!
 * \brief handle received data from AI provider
 */
void AIChatAssistant::onRequestCompleted(QNetworkReply *nreply)
{
    if (!nreply || nreply->error() != QNetworkReply::NoError) return;
    QByteArray data=nreply->readAll();
    QJsonDocument doc=QJsonDocument::fromJson(data);
    QJsonObject obj=doc.object();
    QJsonArray arr=obj["choices"].toArray();
    if(arr.size()>0){
        QJsonObject ja_choice=arr[0].toObject();
        QJsonObject ja_message=ja_choice["message"].toObject();
        QString response=ja_message["content"].toString();
        textBrowser->setText(response);
    }
    nreply->deleteLater();
}
