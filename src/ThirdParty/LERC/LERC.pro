# URL: https://github.com/Esri/lerc
# License: Apache License, Version 2.0 - https://github.com/Esri/lerc/blob/master/LICENSE

TEMPLATE = lib
CONFIG += staticlib
TARGET = tp_LERC

QT -= core gui

CONFIG -= warn_on
CONFIG += warn_off

THIRDPARTY_LERC_PATH = $${PWD}/lerc-3.0

include(../CommonSettings.pri)

INCLUDEPATH = $${THIRDPARTY_LERC_PATH}/src/LercLib/include $${THIRDPARTY_LERC_PATH}/src/LercLib $${INCLUDEPATH}

SOURCES += \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/BitMask.cpp \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/BitStuffer2.cpp \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Huffman.cpp \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Lerc.cpp \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Lerc1Decode/BitStuffer.cpp \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Lerc1Decode/CntZImage.cpp \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Lerc2.cpp \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Lerc_c_api_impl.cpp \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/RLE.cpp \

HEADERS += \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/BitMask.h \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/BitStuffer2.h \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Defines.h \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Huffman.h \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Lerc.h \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Lerc1Decode/BitStuffer.h \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Lerc1Decode/CntZImage.h \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Lerc1Decode/Image.h \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/Lerc2.h \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/RLE.h \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/include/Lerc_c_api.h \
    $${THIRDPARTY_LERC_PATH}/src/LercLib/include/Lerc_types.h \

TR_EXCLUDE += $${THIRDPARTY_LERC_PATH}/*
