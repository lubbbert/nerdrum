#pragma once

#include <QObject>
#include <QJsonDocument>

class Options : QObject
{
    Q_OBJECT

public:
    Options();

    enum SaveFormat {
        Json, Binary
    };

private:
    void load();
};
