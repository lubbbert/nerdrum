#include "gridsettings.h"

GridSettings::GridSettings()
{

}

void GridSettings::setDefault()
{
    setSnapToGrid(true);
    setDisplayGrid(true);
    setGridSizeInPixels(5);
}

void GridSettings::read(const QJsonObject &json)
{
    QString str;

    str = "snapToGrid";
    if (json.contains(str) && json[str].isString())
        m_snapToGrid = json[str].toBool();

    str = "displayGrid";
    if (json.contains(str) && json[str].isString())
        m_snapToGrid = json[str].toBool();

    str = "gridSizeInPixels";
    if (json.contains(str) && json[str].isString())
        m_snapToGrid = json[str].toInt();
}

bool GridSettings::snapToGrid() const
{
    return m_snapToGrid;
}

void GridSettings::setSnapToGrid(bool snapToGrid)
{
    if (m_snapToGrid == snapToGrid)
        return;
    m_snapToGrid = snapToGrid;
    emit snapToGridChanged();
}

bool GridSettings::displayGrid() const
{
    return m_displayGrid;
}

void GridSettings::setDisplayGrid(bool displayGrid)
{
    if (m_displayGrid == displayGrid)
        return;
    m_displayGrid = displayGrid;
    emit displayGridChanged();
}

int GridSettings::gridSizeInPixels() const
{
    return m_gridSizeInPixels;
}

void GridSettings::setGridSizeInPixels(int gridSizeInPixels)
{
    if (m_gridSizeInPixels == gridSizeInPixels)
        return;
    if (gridSizeInPixels > 0)
        m_gridSizeInPixels = gridSizeInPixels;
    else
        m_gridSizeInPixels = 1;
    emit gridSizeInPixelsChanged();
}
