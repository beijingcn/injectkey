@echo off
::color 0a
title PC����
echo ��� ��� ��� ��� ������� ��� ��� ��� ����
echo ��� ��� ��� ��� ������� ��� ��� ��� ����
echo.���                                              ���
echo.���                                              ���
echo.���   ����ӳ�俪���У����Ե�......               ���
echo ���                                              ���
echo.���                                              ���
echo ��� ��� ��� ��� ������� ��� ��� ��� ����
echo ��� ��� ��� ��� ������� ��� ��� ��� ����
echo=
echo ��������ӳ�䣬�ٶ����ֻ���������û������β��Ϣʱ 
echo ����رձ����ڡ�
echo=
echo ���û���
set Path=%cd%\adb;%Path%
echo %cd%\adb
echo=
echo ����adb����
adb kill-server
adb start-server
echo=
echo ɨ��adb�豸
adb devices
echo=
adb shell echo �ر�SELinux;setenforce 0;echo ɾ��gamepadtool;rm -Rf /data/local/tmp/.gamepadtool;echo ����gamepadtool;mkdir /data/local/tmp/.gamepadtool;echo �޸�Ȩ��;chmod 777 /data/local/tmp/.gamepadtool;echo ����dalvik;mkdir /data/local/tmp/.gamepadtool/dalvik-cache;echo �޸�dal;chmod 777 /data/local/tmp/.gamepadtool/dalvik-cache;echo cp jar�ļ�;cp /data/data/com.doubleghost.injecttest/files/InjectServer.jar /data/local/tmp/.gamepadtool;echo dd����jar;dd if=/data/data/com.doubleghost.injecttest/files/InjectServer.jar of=/data/local/tmp/.gamepadtool/InjectServer.jar;echo �޸�jarȨ��;chmod 777 /data/local/tmp/.gamepadtool/InjectServer.jar;echo �޸�jar������;chown shell /data/local/tmp/.gamepadtool/InjectServer.jar;echo ����;export CLASSPATH=/data/local/tmp/.gamepadtool/InjectServer.jar;export ANDROID_DATA=/data/local/tmp/.gamepadtool;trap "" HUP;echo �������񣬿�����Ҫ1��������;exec app_process /data/local/tmp/.gamepadtool com.doubleghost.inject.InjectServer &
echo=
echo ִ����ϣ��밴������˳���
echo=
pause
