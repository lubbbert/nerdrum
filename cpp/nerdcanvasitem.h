#pragma once

#include <QQuickPaintedItem>
#include <QPainter>

class NerdCanvasItem : public QQuickPaintedItem
{
    Q_OBJECT

public:
    enum ItemTypes { Geometry, Text };
    Q_ENUM(ItemTypes)

    explicit NerdCanvasItem(const QString& name,
                          const ItemTypes& type,
                          const QRect& r,
                          QQuickItem* parent = nullptr);

    NerdCanvasItem(const NerdCanvasItem& other);

    NerdCanvasItem& operator=(const NerdCanvasItem& other);

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
