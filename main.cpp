#include <QtGui>
#include <QtQml>
#include <QQuickView>

#include "dataentrymodel.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // register the type DataEntryModel under the url "org.example" in version 1.0
    // under the name "DataEntryModel"
    qmlRegisterType<DataEntryModel>("org.example", 1, 0, "DataEntryModel");
    QQuickView view;
    view.setSource(QUrl("qrc:/qml/main.qml"));
    view.show();
    return app.exec();
}
