#include "settings.hpp"


Settings::Settings()
{

}

bool Settings::loadFile(Settings::SaveFormat saveFormat)
{
    QFile loadFile(saveFormat == Json
            ? QStringLiteral("options.json")
            : QStringLiteral("optins.dat"));

    if (!loadFile.open(QIODevice::ReadOnly)) {
        qWarning("Couldn't open save file.");
        return false;
    }

    QByteArray saveData = loadFile.readAll();

    QJsonDocument loadDoc(saveFormat == Json
                          ? QJsonDocument::fromJson(saveData)
                          : QJsonDocument(QCborValue::fromCbor(saveData)
                                          .toMap()
                                          .toJsonObject()));
    read(loadDoc.object());

    QTextStream(stdout) << "Loaded settings named "
                        << loadDoc["settings"]["name"].toString()
                        << " using "
                        << (saveFormat != Json ? "CBOR" : "JSON") << "...\n";
    return true;
}

void Settings::read(const QJsonObject& json)
{
    if (json.contains("grid") && json["grid"].isObject())
    {

    }
}
