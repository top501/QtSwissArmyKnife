#-------------------------------------------------
#
# Project created by QtCreator 2018-07-06T22:57:33
#
#-------------------------------------------------

QT += core gui xml charts network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QtSwissArmyKnife

TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, unTabPage the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

include(modules/Modules.pri)

# 子项目
include(SAKSerialPort.pri)
include(SAKSetup.pri)

#--------------------------------------------------------------------------------------------
#编译目录配置
UI_DIR      = $$OUT_PWD/ui
MOC_DIR     = $$OUT_PWD/moc
RCC_DIR     = $$OUT_PWD/res
OBJECTS_DIR = $$OUT_PWD/obj

#--------------------------------------------------------------------------------------------
#Windows配置
win32 {
    RC_ICONS = Windows.ico
    msvc:{
        QMAKE_CXXFLAGS += -execution-charset:utf-8
    }
}

#--------------------------------------------------------------------------------------------
#国际化文件
TRANSLATIONS  += \
    Translations/sak/SAK_en.ts \
    Translations/sak/SAK_zh_CN.ts \
    Translations/sak/SAK_zh_TW.ts


RESOURCES += \
    SAKResources.qrc \


INCLUDEPATH += \
    src \
    src/base \
    src/common \
    src/page \
    src/page/input \
    src/page/other \
    src/page/other/analyze \
    src/page/other/autoresponse \
    src/page/other/chart \
    src/page/other/chart/morechart \
    src/page/other/chart/throughput \
    src/page/other/highlight \
    src/page/other/more \
    src/page/other/readwrite \
    src/page/other/timing \
    src/page/other/transmission \
    src/page/output \
    src/page/output/save \
    src/page/statistics \
    src/tcpclient \
    src/tcpserver \
    src/tools \
    src/tools/crccalculator \
    src/tools/filechecker \
    src/udp \
    src/update


HEADERS +=  \
    src/MoreInformation.hh \
    src/SAKApplication.hh \
    src/SAKCodingStyle.hh \
    src/SAKGlobal.hh \
    src/SAKMainWindow.hh \
    src/SAKSettings.hh \
    src/SAKVersion.hh \
    src/base/SAKDialog.hh \
    src/base/SAKMessageBox.hh \
    src/base/SAKWidget.hh \
    src/common/SAKCRCInterface.hh \
    src/page/SAKDebugPage.hh \
    src/page/input/DebugPageInputManager.hh \
    src/page/input/InputDataFactory.hh \
    src/page/input/InputDataItem.hh \
    src/page/input/InputDataItemManager.hh \
    src/page/other/SAKOtherSettings.hh \
    src/page/other/analyze/FormatSettingsWidget.hh \
    src/page/other/autoresponse/AutoResponseItemWidget.hh \
    src/page/other/autoresponse/AutoResponseSettingWidget.hh \
    src/page/other/chart/SAKChartManager.hh \
    src/page/other/chart/morechart/MoreChartWidget.hh \
    src/page/other/chart/throughput/ThroughputWidget.hh \
    src/page/other/highlight/HighlightSettings.hh \
    src/page/other/highlight/HighlightSettingsWidget.hh \
    src/page/other/more/MoreOtherSettingsWidget.hh \
    src/page/other/readwrite/ReadWriteSettingsWidget.hh \
    src/page/other/timing/SAKTimingSendingItem.hh \
    src/page/other/timing/SAKTimingSendingManager.hh \
    src/page/other/transmission/BaseTransmissionItemWidget.hh \
    src/page/other/transmission/SerialPortTransmissionItemWidget.hh \
    src/page/other/transmission/TcpTransmissionItemWidget.hh \
    src/page/other/transmission/TransmissionItemDelegate.hh \
    src/page/other/transmission/TransmissionPage.hh \
    src/page/other/transmission/TransmissionSettings.hh \
    src/page/other/transmission/UdpTransmissionItemWidget.hh \
    src/page/output/DebugPageOutputManager.hh \
    src/page/output/OutputDataFactory.hh \
    src/page/output/save/SaveOutputDataSettings.hh \
    src/page/output/save/SaveOutputDataThread.hh \
    src/page/statistics/SAKStatisticsManager.hh \
    src/tcpclient/SAKTcpClientDebugPage.hh \
    src/tcpclient/SAKTcpClientDevice.hh \
    src/tcpclient/SAKTcpClientDeviceController.hh \
    src/tcpserver/SAKTcpServerDebugPage.hh \
    src/tcpserver/SAKTcpServerDevice.hh \
    src/tcpserver/SAKTcpServerDeviceController.hh \
    src/tools/crccalculator/CRCCalculator.hh \
    src/tools/crccalculator/CRCInterface.hh \
    src/tools/filechecker/QtCryptographicHashCalculator.hh \
    src/tools/filechecker/QtCryptographicHashController.hh \
    src/udp/SAKUdpDebugPage.hh \
    src/udp/SAKUdpDevice.hh \
    src/udp/SAKUdpDeviceController.hh \
    src/update/SAKDownloadItemWidget.hh \
    src/update/SAKUpdateManager.hh


SOURCES +=  \
    src/MoreInformation.cc \
    src/SAKApplication.cc \
    src/SAKCodingStyle.cc \
    src/SAKGlobal.cc \
    src/SAKMainWindow.cc \
    src/SAKSettings.cc \
    src/SAKVersion.cc \
    src/base/SAKDialog.cc \
    src/base/SAKMessageBox.cc \
    src/base/SAKWidget.cc \
    src/common/SAKCRCInterface.cc \
    src/main.cc \
    src/page/SAKDebugPage.cc \
    src/page/input/DebugPageInputManager.cc \
    src/page/input/InputDataFactory.cc \
    src/page/input/InputDataItem.cc \
    src/page/input/InputDataItemManager.cc \
    src/page/other/SAKOtherSettings.cc \
    src/page/other/analyze/FormatSettingsWidget.cc \
    src/page/other/autoresponse/AutoResponseItemWidget.cc \
    src/page/other/autoresponse/AutoResponseSettingWidget.cc \
    src/page/other/chart/SAKChartManager.cc \
    src/page/other/chart/morechart/MoreChartWidget.cc \
    src/page/other/chart/throughput/ThroughputWidget.cc \
    src/page/other/highlight/HighlightSettings.cc \
    src/page/other/highlight/HighlightSettingsWidget.cc \
    src/page/other/more/MoreOtherSettingsWidget.cc \
    src/page/other/readwrite/ReadWriteSettingsWidget.cc \
    src/page/other/timing/SAKTimingSendingItem.cc \
    src/page/other/timing/SAKTimingSendingManager.cc \
    src/page/other/transmission/BaseTransmissionItemWidget.cc \
    src/page/other/transmission/SerialPortTransmissionItemWidget.cc \
    src/page/other/transmission/TcpTransmissionItemWidget.cc \
    src/page/other/transmission/TransmissionItemDelegate.cc \
    src/page/other/transmission/TransmissionPage.cc \
    src/page/other/transmission/TransmissionSettings.cc \
    src/page/other/transmission/UdpTransmissionItemWidget.cc \
    src/page/output/DebugPageOutputManager.cc \
    src/page/output/OutputDataFactory.cc \
    src/page/output/save/SaveOutputDataSettings.cc \
    src/page/output/save/SaveOutputDataThread.cc \
    src/page/statistics/SAKStatisticsManager.cc \
    src/tcpclient/SAKTcpClientDebugPage.cc \
    src/tcpclient/SAKTcpClientDevice.cc \
    src/tcpclient/SAKTcpClientDeviceController.cc \
    src/tcpserver/SAKTcpServerDebugPage.cc \
    src/tcpserver/SAKTcpServerDevice.cc \
    src/tcpserver/SAKTcpServerDeviceController.cc \
    src/tools/crccalculator/CRCCalculator.cc \
    src/tools/crccalculator/CRCInterface.cc \
    src/tools/filechecker/QtCryptographicHashCalculator.cc \
    src/tools/filechecker/QtCryptographicHashController.cc \
    src/udp/SAKUdpDebugPage.cc \
    src/udp/SAKUdpDevice.cc \
    src/udp/SAKUdpDeviceController.cc \
    src/update/SAKDownloadItemWidget.cc \
    src/update/SAKUpdateManager.cc

FORMS +=  \
    src/MoreInformation.ui \
    src/SAKMainWindow.ui \
    src/SAKVersion.ui \
    src/page/SAKDebugPage.ui \
    src/page/input/InputDataItem.ui \
    src/page/input/InputDataItemManager.ui \
    src/page/other/analyze/FormatSettingsWidget.ui \
    src/page/other/autoresponse/AutoResponseItemWidget.ui \
    src/page/other/autoresponse/AutoResponseSettingWidget.ui \
    src/page/other/chart/morechart/MoreChartWidget.ui \
    src/page/other/highlight/HighlightSettingsWidget.ui \
    src/page/other/more/MoreOtherSettingsWidget.ui \
    src/page/other/readwrite/ReadWriteSettingsWidget.ui \
    src/page/other/timing/SAKTimingSendingItem.ui \
    src/page/other/timing/SAKTimingSendingManager.ui \
    src/page/other/transmission/SerialPortTransmissionItemWidget.ui \
    src/page/other/transmission/TcpTransmissionItemWidget.ui \
    src/page/other/transmission/TransmissionPage.ui \
    src/page/other/transmission/TransmissionSettings.ui \
    src/page/other/transmission/UdpTransmissionItemWidget.ui \
    src/page/output/save/SaveOutputDataSettings.ui \
    src/tcpclient/SAKTcpClientDeviceController.ui \
    src/tcpserver/SAKTcpServerDeviceController.ui \
    src/tools/crccalculator/CRCCalculator.ui \
    src/tools/filechecker/QtCryptographicHashController.ui \
    src/udp/SAKUdpDeviceController.ui \
    src/update/SAKDownloadItemWidget.ui \
    src/update/SAKUpdateManager.ui
