#pragma once

#include <QQuickPaintedItem>
#include <QPainter>

class QtCanvasItem : public QQuickPaintedItem
{
    Q_OBJECT

public:
    enum ItemTypes { Geometry, Text };
    Q_ENUM(ItemTypes)

    explicit QtCanvasItem(const QString& name,
                          const ItemTypes& type,
                          const QRect& r,
                          QQuickItem* parent = nullptr);

    QtCanvasItem(const QtCanvasItem& other);

    QtCanvasItem& operator=(const QtCanvasItem& other);

    void paint(QPainter* painter);

    QString name() const;
    void setName(QString& name);

    ItemTypes type() const;

    const QRect& rect() const;
    void setRect(const QRect& rect);

private:
    QString m_name;
    ItemTypes m_type;
    QRect m_rect;
};
