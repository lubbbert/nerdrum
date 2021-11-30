#pragma once

#include <QObject>

class Dispatcher : public QObject
{
    Q_OBJECT
public:
    explicit Dispatcher(QObject* parent = nullptr);

    enum Task {
        Selection,
        ScalableItem
    };
    Q_ENUM(Task)

    Q_PROPERTY(Task task READ task WRITE setTask NOTIFY taskChanged)
    Task task() const;
    void setTask(Task task);

signals:
    void taskChanged();

private:
    Task m_task;
};

