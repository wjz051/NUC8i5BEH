@echo off
title NUC8-macOS 在线安装U盘-制作工具

:MAINMENU
cls
color F2
echo          ╔════════════════════════════════════════════════╗
echo          ║           macOS 在线安装U盘-制作工具           ║
echo          ║                         2020-03-11 by 维奇-东篱║
echo          ║                                                ║
echo          ║     无需下载体积庞大的macOS安装包...           ║
echo          ║                   体验稳如白果的在线安装...    ║
echo          ║                                                ║
echo          ║  使用说明：                                    ║
echo          ║   1、准备Fat32格式的U盘，剩余空间大于500MB     ║
echo          ║   2、将 macOS-online-installer.zip、EFI-OC-    ║
echo          ║      xxxxxx.zip 拷贝至U盘根目录并都解压        ║
echo          ║   3、运行 macOS-online-installer 中的 run.bat  ║
echo          ║   4、按照提示下载完成后，弹出 U 盘并插到 NUC   ║
echo          ║   5、NUC 开机，连续按ESC键直到出现OpenCore菜单 ║
echo          ║   6、选择恢复模式启动，Enjoy                   ║
echo          ║                                                ║
echo          ║  如想了解更多 NUC8ixBE 豆子峡谷安装黑苹果知识，║
echo          ║          请查阅我的文章   http://u.nu/nuc8     ║
echo          ║                                                ║
echo          ║   欢迎加入 Intel NUC Community Q群：341960876  ║
echo          ╚════════════════════════════════════════════════╝                      

echo 按任意键开始下载 Recovery 镜像... & pause > nul
if exist ..\com.apple.recovery.boot (
   rmdir /s/q ..\com.apple.recovery.boot
)
mkdir ..\com.apple.recovery.boot
echo 开始下载...
python\python.exe python\macrecovery.py -o ..\com.apple.recovery.boot download
echo 下载完成，按任意键退出... & pause & exit
