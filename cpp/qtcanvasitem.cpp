#include "qtcanvasitem.h"

QtCanvasItem::QtCanvasItem(const QString& name,
                           const ItemTypes& type,
                           const QRect& rect,
                           QQuickItem* parent)
{
    this->m_name = "FFFFFFFFFFFFFFFF";//name;
    this->m_type = type;
    this->m_rect = rect;
    this->setParent(parent);
    qDebug() << "QtCanvasItem()" << rect.x() << rect.y();
    qDebug() << "QtCanvasItem()" << m_rect.x() << m_rect.y();
}

QtCanvasItem& QtCanvasItem::operator=(const QtCanvasItem& other)
{
    return *this;
}

QtCanvasItem::QtCanvasItem(const QtCanvasItem& other)
{
    this->m_name = other.name();
    this->m_type = other.type();
    this->m_rect = other.rect();
}


void QtCanvasItem::paint(QPainter* painter)
{
    painter->setPen(QColor(100, 199, 255));
    painter->drawRect(QRect(m_rect.x(), m_rect.y(), m_rect.width(), m_rect.height()));
}

QString QtCanvasItem::name() const
{
    return m_name;
}

void QtCanvasItem::setName(QString& name)
{
    m_name = name;
}

QtCanvasItem::ItemTypes QtCanvasItem::type() const
{
    return m_type;
}

const QRect& QtCanvasItem::rect() const
{
    return m_rect;
}

void QtCanvasItem::setRect(const QRect& rect)
{
    m_rect = rect;
}
