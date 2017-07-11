
TEMPLATE = lib
TARGET = qmupdf

HEADERS += \
    include/mupdf-document.h \
    include/mupdf-link.h \
    include/mupdf-outline.h \
    include/mupdf-page.h \
    include/mupdf-qt.h \
    include/mupdf-textbox.h


SOURCES += \
    src/mupdf-document.cpp \
    src/mupdf-link.cpp \
    src/mupdf-outline.cpp \
    src/mupdf-page.cpp \
    src/mupdf-textbox.cpp

INCLUDEPATH += \
    $$PWD/include \
    $$PWD/mupdf/include \
    $$PWD/src/private

LIBS += \
    -L$$PWD/mupdf/build/release \
    -ljpeg \
    -lmujs \
    -lmupdf \
    -lopenjpeg \
    -lz \
    -ljbig2dec \
    -lfreetype \
# SSL libs should be also present into the mupdf/build/release folder
    -lssl \
    -lcrypto
