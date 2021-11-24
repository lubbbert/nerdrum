#include "qtcanvas.h"

QtCanvas::QtCanvas(QQuickItem* parent)
{
//    m_items = new QList<QtCanvasItem>;
}

void QtCanvas::paint(QPainter* painter)
{
    painter->setPen(QPen(QBrush(Qt::white), 1));
    painter->drawRect(QRect(10, 10, 100, 100));
}

void QtCanvas::addRect(QRect rect)
{

}

//void QtCanvas::addItem(QtCanvasItem item)
//{

//}
