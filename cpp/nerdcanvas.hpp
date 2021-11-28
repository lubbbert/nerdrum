#pragma once

#include <QQuickPaintedItem>
#include <QObject>
#include <QList>
#include <QPainter>
#include "nerdcanvasitem.hpp"

class NerdCanvas : public QQuickPaintedItem
{
    Q_OBJECT

public:
    explicit NerdCanvas(QQuickItem* parent = nullptr);

    void paint(QPainter* painter);

    Q_INVOKABLE void addItem(QRect& r, QColor& c);

private:
    QList<NerdCanvasItem> m_items;
};
