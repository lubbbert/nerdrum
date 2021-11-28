#include "nerdcanvasitem.hpp"

NerdCanvasItem::NerdCanvasItem(const QString& name,
                           const ItemTypes& type,
                           const QRect& rect,
                           QQuickItem* parent)
{
    this->m_name = "FFFFFFFFFFFFFFFF";//name;
    this->m_type = type;
    this->m_rect = rect;
    this->setParent(parent);
    qDebug() << "NerdCanvasItem()" << rect.x() << rect.y();
    qDebug() << "NerdCanvasItem()" << m_rect.x() << m_rect.y();
}

NerdCanvasItem& NerdCanvasItem::operator=(const NerdCanvasItem& other)
{
    return *this;
}

NerdCanvasItem::NerdCanvasItem(const NerdCanvasItem& other)
{
    this->m_name = other.name();
    this->m_type = other.type();
    this->m_rect = other.rect();
}


void NerdCanvasItem::paint(QPainter* painter)
{
    painter->setPen(QColor(100, 199, 255));
    painter->drawRect(QRect(m_rect.x(), m_rect.y(), m_rect.width(), m_rect.height()));
}

QString NerdCanvasItem::name() const
{
    return m_name;
}

void NerdCanvasItem::setName(QString& name)
{
    m_name = name;
}

NerdCanvasItem::ItemTypes NerdCanvasItem::type() const
{
    return m_type;
}

const QRect& NerdCanvasItem::rect() const
{
    return m_rect;
}

void NerdCanvasItem::setRect(const QRect& rect)
{
    m_rect = rect;
}
