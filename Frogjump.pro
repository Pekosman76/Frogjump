TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp

RESOURCES += \
    assets.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    main.qml \
    Game.qml \
    Frog.qml \
    Ant.qml \
    Score.qml

