@echo off
title NUC8-macOS ���߰�װU��-��������

:MAINMENU
cls
color F2
echo          �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
echo          �U           macOS ���߰�װU��-��������           �U
echo          �U                         2020-03-11 by ά��-����U
echo          �U                                                �U
echo          �U     ������������Ӵ��macOS��װ��...           �U
echo          �U                   ��������׹������߰�װ...    �U
echo          �U                                                �U
echo          �U  ʹ��˵����                                    �U
echo          �U   1��׼��Fat32��ʽ��U�̣�ʣ��ռ����500MB     �U
echo          �U   2���� macOS-online-installer.zip��EFI-OC-    �U
echo          �U      xxxxxx.zip ������U�̸�Ŀ¼������ѹ        �U
echo          �U   3������ macOS-online-installer �е� run.bat  �U
echo          �U   4��������ʾ������ɺ󣬵��� U �̲��嵽 NUC   �U
echo          �U   5��NUC ������������ESC��ֱ������OpenCore�˵� �U
echo          �U   6��ѡ��ָ�ģʽ������Enjoy                   �U
echo          �U                                                �U
echo          �U  �����˽���� NUC8ixBE ����Ͽ�Ȱ�װ��ƻ��֪ʶ���U
echo          �U          ������ҵ�����   http://u.nu/nuc8     �U
echo          �U                                                �U
echo          �U   ��ӭ���� Intel NUC Community QȺ��341960876  �U
echo          �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a                      

echo ���������ʼ���� Recovery ����... & pause > nul
if exist ..\com.apple.recovery.boot (
   rmdir /s/q ..\com.apple.recovery.boot
)
mkdir ..\com.apple.recovery.boot
echo ��ʼ����...
python\python.exe python\macrecovery.py -o ..\com.apple.recovery.boot download
echo ������ɣ���������˳�... & pause & exit
