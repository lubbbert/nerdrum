#include "qtcanvasitem.h"

QtCanvasItem::QtCanvasItem(const QString& name,
                           const ItemTypes type,
                           QQuickItem* parent)
{
    m_name = name;
    m_type = type;
}

void QtCanvasItem::paint(QPainter* painter)
{
    painter->setPen(QColor(100, 199, 255));
    painter->drawRect(QRect(0, 0, 100, 100));
}

QString QtCanvasItem::name() const
{
    return m_name;
}

void QtCanvasItem::setName(QString newName)
{
    m_name = newName;
}

QtCanvasItem::ItemTypes QtCanvasItem::type() const
{
    return m_type;
}
