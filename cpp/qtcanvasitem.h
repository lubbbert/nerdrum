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
                          const ItemTypes type,
                          QQuickItem* parent);

    void paint(QPainter* painter);

    QString name() const;
    void setName(QString newName);

    ItemTypes type() const;

private:
    QString m_name;
    ItemTypes m_type;
};
