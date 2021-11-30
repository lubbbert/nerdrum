#pragma once

#include <QObject>
#include <QJsonDocument>
#include <QCborValue>
#include <QCborMap>
#include <QJsonObject>
#include <QFile>

#include "gridsettings.h"

class Settings : QObject
{
    Q_OBJECT

public:
    Settings();

    enum SaveFormat {
        Json, Binary
    };

    bool loadFile(Settings::SaveFormat saveFormat);

private:
    GridSettings gridSettings;

    void read(const QJsonObject &json);
};
