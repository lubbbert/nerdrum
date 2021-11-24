#pragma once

#include <QQuickPaintedItem>
#include <QObject>
#include <QList>
#include <QPainter>
#include "qtcanvasitem.h"

class QtCanvas : public QQuickPaintedItem
{
    Q_OBJECT

public:
    explicit QtCanvas(QQuickItem* parent = nullptr);

    void paint(QPainter* painter);

    void addRect(QRect rect);

private:
//    QList<QtCanvasItem>* m_items;

//    void addItem(QtCanvasItem* item);
};
