# translations package
# Matthew Bertucci 9/19/2021 for v1.10a

#include:etoolbox
#include:pdftexcmds

\DeclareLanguage{lang}#*
\DeclareLanguageAlias{lang2}{lang1}#*
\DeclareLanguageDialect{dialect}{lang}#*
\NewTranslation{lang}{key%plain}{translation}#*
\NewTranslationFallback{key%plain}{translation}#*
\RenewTranslation{lang}{key%plain}{translation}#*
\RenewTranslationFallback{key%plain}{translation}#*
\ProvideTranslation{lang}{key%plain}{translation}#*
\ProvideTranslationFallback{key%plain}{translation}#*
\DeclareTranslation{lang}{key%plain}{translation}#*
\DeclareTranslationFallback{key%plain}{fallback}#*
\definetranslation{lang}{key%plain}{translation}#*
\definetranslationfallback{key%plain}{translation}#*
\redefinetranslation{lang}{key%plain}{translation}#*
\redefinetranslationfallback{key%plain}{translation}#*
\addtranslation{lang}{key%plain}{translation}#*
\addtranslationfallback{key%plain}{translation}#*
\declaretranslation{lang}{key%plain}{translation}#*
\declaretranslationfallback{key%plain}{translation}#*
\IfTranslation{lang}{key%plain}{true}{false}#*
\GetTranslationFor{lang}{key%plain}#*
\GetTranslation{key%plain}#*
\GetLCTranslationFor{lang}{key%plain}#*
\GetLCTranslation{key%plain}#*
\GetTranslationForWarn{lang}{key%plain}#*
\GetTranslationWarn{key%plain}#*
\GetLCTranslationForWarn{lang}{key%plain}#*
\GetLCTranslationWarn{key%plain}#*
\SaveTranslationFor{cmd}{lang}{key%plain}#*d
\SaveTranslation{cmd}{key%plain}#*d
\LoadDictionary{name}#*
\LoadDictionaryFor{lang}{name}#*
\LoadDictionaryForDialect{lang}{name}#*
\NewDictTranslation{key%plain}{translation}#*
\RenewDictTranslation{key%plain}{translation}#*
\ProvideDictTranslation{key%plain}{translation}#*
\DeclareDictTranslation{key%plain}{translation}#*
\ProvideDictionaryFor{lang}{name}[date]#*
\PrintDictionaryFor{lang}{name}{pre}{mid}{post}#*
\baselanguage{lang}#*
\ifcurrentlanguage{lang}{true}{false}#*
\ifcurrentlang{lang}#*
\ifcurrentbaselanguage{lang}{true}{false}#*
\ifcurrentbaselang{lang}#*