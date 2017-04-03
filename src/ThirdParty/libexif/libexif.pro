# URL: http://libexif.sourceforge.net/
# License: GNU LGPL v2.1

TEMPLATE = lib
CONFIG += staticlib
TARGET = tp_libexif

QT -= core gui

CONFIG -= warn_on
CONFIG += exceptions_off rtti_off warn_off

THIRDPARTY_LIBEXIF_PATH = $${PWD}/libexif-0.6.21
THIRDPARTY_LIBEXIF_CONFIG_PATH = $${PWD}/config

include(../CommonSettings.pri)

INCLUDEPATH = $${THIRDPARTY_LIBEXIF_PATH} $${THIRDPARTY_LIBEXIF_CONFIG_PATH} $${INCLUDEPATH}

DEFINES += GETTEXT_PACKAGE=\\\"libexif-12\\\"
*msvc*: DEFINES += ssize_t=__int64 inline=__inline

SOURCES += \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-byte-order.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-content.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-data.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-entry.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-format.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-ifd.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-loader.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-log.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-mem.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-mnote-data.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-tag.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/exif-utils.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/canon/exif-mnote-data-canon.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/canon/mnote-canon-entry.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/canon/mnote-canon-tag.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/fuji/exif-mnote-data-fuji.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/fuji/mnote-fuji-entry.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/fuji/mnote-fuji-tag.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/olympus/exif-mnote-data-olympus.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/olympus/mnote-olympus-entry.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/olympus/mnote-olympus-tag.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/pentax/exif-mnote-data-pentax.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/pentax/mnote-pentax-entry.c \
    $${THIRDPARTY_LIBEXIF_PATH}/libexif/pentax/mnote-pentax-tag.c

TR_EXCLUDE += $${THIRDPARTY_LIBEXIF_PATH}/*
