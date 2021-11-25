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

    Q_INVOKABLE void addItem(QRect& r, QColor& c);

private:
    QList<QtCanvasItem> m_items;
};
