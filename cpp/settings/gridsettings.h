#pragma once

#include <QObject>
#include <QJsonObject>

class GridSettings : QObject
{
    Q_OBJECT

public:
    GridSettings();

    void setDefault();
    void read(const QJsonObject &json);

    Q_PROPERTY(bool snapToGrid READ snapToGrid WRITE setSnapToGrid NOTIFY snapToGridChanged)
    bool snapToGrid() const;
    void setSnapToGrid(bool snapToGrid);

    Q_PROPERTY(bool displayGrid READ displayGrid WRITE setDisplayGrid NOTIFY displayGridChanged)
    bool displayGrid() const;
    void setDisplayGrid(bool newDisplayGrid);

    Q_PROPERTY(uint gridSizeInPixels READ gridSizeInPixels WRITE setGridSizeInPixels NOTIFY gridSizeInPixelsChanged)
    int gridSizeInPixels() const;
    void setGridSizeInPixels(int newGridSizeInPixels);

signals:
    void snapToGridChanged();
    void displayGridChanged();
    void gridSizeInPixelsChanged();

private:
    bool m_snapToGrid;
    bool m_displayGrid;
    int m_gridSizeInPixels;
};

