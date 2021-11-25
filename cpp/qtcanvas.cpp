#include "qtcanvas.h"

QtCanvas::QtCanvas(QQuickItem* parent)
{
}

void QtCanvas::paint(QPainter* painter)
{
    qDebug() << "QtCanvas::paint start!";
    painter->setBrush(Qt::black);
    painter->setPen(QPen(QBrush(Qt::black), 1));
    painter->drawRect(QRect(0, 0, this->width(), this->height()));
    qDebug() << "QtCanvas::paint items start";
    foreach (auto item, m_items) {
        item.paint(painter);
    }
    qDebug() << "QtCanvas::paint items end";
}

void QtCanvas::addItem(QRect& r, QColor& c)
{
    auto item = QtCanvasItem("Rect", QtCanvasItem::ItemTypes::Geometry, r, this);
    m_items.append(item);
    this->update(QRect(0, 0, this->width(), this->height()));
}


//void QtCanvas::addItem(QtCanvasItem item)
//{

//}
