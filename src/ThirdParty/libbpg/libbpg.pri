# URL: http://bellard.org/bpg/
# License: ???

include($${PWD}/../../Features.pri)

!disable_libbpg {

    DEFINES += HAS_LIBBPG

    !system_libbpg {

        THIRDPARTY_LIBBPG_PATH = $${PWD}/libbpg-0.9.7

        INCLUDEPATH += $${THIRDPARTY_LIBBPG_PATH}
        DEPENDPATH += $${THIRDPARTY_LIBBPG_PATH}

        OUT_LIB_TARGET = tp_libbpg
        OUT_LIB_DIR = $${OUT_PWD}/../ThirdParty/libbpg
        OUT_LIB_NAME =
        OUT_LIB_LINK =
        win32 {
            CONFIG(release, debug|release) {
                OUT_LIB_DIR = $${OUT_LIB_DIR}/release
            } else:CONFIG(debug, debug|release) {
                OUT_LIB_DIR = $${OUT_LIB_DIR}/debug
            }
            *g++*|*clang* {
                OUT_LIB_NAME = lib$${OUT_LIB_TARGET}.a
                OUT_LIB_LINK = -l$${OUT_LIB_TARGET}
            } else {
                OUT_LIB_NAME = $${OUT_LIB_TARGET}.lib
                OUT_LIB_LINK = $${OUT_LIB_NAME}
            }
        } else {
            OUT_LIB_DIR = $${OUT_LIB_DIR}
            OUT_LIB_NAME = lib$${OUT_LIB_TARGET}.a
            OUT_LIB_LINK = -l$${OUT_LIB_TARGET}
        }
        LIBS += -L$${OUT_LIB_DIR} $${OUT_LIB_LINK}
#        PRE_TARGETDEPS += $${OUT_LIB_DIR}/$${OUT_LIB_NAME}

    } else {

        *msvc*: LIBS += libbpg.lib
        else: LIBS += -lbpg

    }

}