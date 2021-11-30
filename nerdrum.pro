QT += \
   quick \
   core5compat

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    cpp/dispatcher.cpp \
    cpp/nerdcanvas.cpp \
    cpp/nerdcanvasitem.cpp \
    cpp/settings/gridsettings.cpp \
    cpp/settings/settings.cpp \
        main.cpp \

HEADERS += \
    cpp/dispatcher.hpp \
    cpp/nerdcanvas.hpp \
    cpp/nerdcanvasitem.hpp \
    cpp/settings.hpp \
    cpp/settings/gridsettings.h \
    cpp/settings/settings.hpp

RESOURCES += qml.qrc

RC_ICONS = nerdrum.ico

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH += $$PWD/qml

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
