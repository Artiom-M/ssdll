#include "translatordemo.h"
#include <iostream>

TranslatorDemo::TranslatorDemo(QObject *parent) :
    QObject(parent)
{
}

bool TranslatorDemo::loadDict(const QString &ifoFilepath) {
#ifdef Q_OS_WIN
    bool result = m_LookupDictionary.loadDictionary(ifoFilepath.toStdWString());
#else
    bool result = m_LookupDictionary.loadDictionary(ifoFilepath.toStdString());
#endif

    return result;
}

void TranslatorDemo::process(const QString &line) {
    std::string translation;
    std::string word = line.toStdString();

    if (m_LookupDictionary.translate(word, translation)) {
        std::cout << translation << std::endl;
    } else {
        std::cout << "Not found";
    }
}
