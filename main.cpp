#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "cpp/nerdcanvas.hpp"
#include "cpp/dispatcher.hpp"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    qmlRegisterType<NerdCanvas>("Qt.NerdCanvas", 1, 0, "NerdCanvas");
    qmlRegisterSingletonType<Dispatcher>("Qt.Dispatcher", 1, 0, "Dispatcher",
                                         [](QQmlEngine *engine, QJSEngine *scriptEngine) -> QObject * {
        Q_UNUSED(engine)
        Q_UNUSED(scriptEngine)

        Dispatcher *example = new Dispatcher();
        return example;
    });

    QQmlApplicationEngine engine;
    engine.addImportPath(":/qml");

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
