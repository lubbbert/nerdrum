#pragma once

#include <QObject>

class Dispatcher : public QObject
{
    Q_OBJECT
public:
    explicit Dispatcher(QObject* parent = nullptr);

    enum Task {
        Selection,
        AddScalableItem
    };
    Q_ENUM(Task)

    Q_PROPERTY(Task task READ task WRITE setTask NOTIFY taskChanged)

    Task task() const;
    void setTask(Task task);
    void taskChanged();

private:
    Task m_task;
};

