#include "dispatcher.hpp"

Dispatcher::Dispatcher(QObject* parent) : QObject(parent)
{
    m_task = Task::Selection;
}

Dispatcher::Task Dispatcher::task() const
{
    return m_task;
}

void Dispatcher::setTask(Task task)
{
    m_task = task;
    emit taskChanged();
}
