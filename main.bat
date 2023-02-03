echo off
mode con cols=50 lines=21
color F0
title 自动关机设置
:start
cls
echo. 
echo    	输入对应数字并且按下Enter设定关机
echo ==================================================
echo     【1】 1小时后关机    【2】 1小时30分钟后关机
echo     【3】 2小时后关机    【4】 2小时30分钟后关机
echo     【5】 3小时后关机    【6】 3小时30分钟后关机
echo     【7】 4小时后关机
echo.     
echo          	【9】 自定义时长关机    
echo. 
echo     【e】 退出 	             【0】 取消关机
echo ==================================================
echo. 
echo 输入对应数字后按下Enter设定关机
echo 设定成功后屏幕右下角有提示
set /p menu=
if %menu%==1 shutdown -s -t 3600
if %menu%==2 shutdown -s -t 5400
if %menu%==3 shutdown -s -t 7200
if %menu%==4 shutdown -s -t 9000
if %menu%==5 shutdown -s -t 10800
if %menu%==6 shutdown -s -t 12600
if %menu%==7 shutdown -s -t 14400
if %menu%==0 shutdown -a
if %menu%==9 goto start0
if %menu%==e exit
if %menu%==E exit
goto start

:start0
cls
echo. 
echo       	自定义时长后关机（设置小时）
echo ==================================================
echo  输入【b】后按下Enter回到主菜单
echo  直接回车将引发问题(无害)
echo  如已有设置将覆盖先前设置
echo  可输入数字来指定对应时间后关机
echo  输入完请按Enter确定
echo  ==不支持小数点==
echo  可设置0跳过
echo ==================================================
echo  设定____小时
echo  设定  分钟
echo  现在时间 %date% %time%
echo ==================================================
echo 现在输入小时：
set /p h=
if %h%==C goto start1
if %h%==c goto start1
cls

echo. 
echo       	自定义时长后关机（设置分钟）
echo ==================================================
echo  输入【b】后按下Enter回到主菜单
echo  输入【r】后按下Enter返回上一步
echo  直接回车将引发问题(无害)
echo  如已有设置将覆盖先前设置
echo  可输入数字来指定对应时间后关机
echo  输入完请按Enter确定
echo  ==不支持小数点==
echo ==================================================
echo  设定%h%小时
echo  设定  分钟
echo 现在时间%date% %time%
echo ==================================================
echo 现在输入分钟：
set /p min=
if %min%==B goto start1
if %min%==b goto start1
if %min%==R goto start
if %min%==r goto start

set /a s=%h%*60*60+%min%*60
shutdown -s -t %s%


:end
cls
echo ==================================================
echo 已设置 %h%小时%min%分钟后关机
echo 重复设定将覆盖先前设置
echo 取消关机请输入【C】 
echo 返回菜单请按Enter
echo 输入完成请按回车确定
echo ==================================================
set /p k1=

if %k1%==C shutdown -a
if %k1%==c shutdown -a
goto start
