echo off
mode con cols=50 lines=21
color F0
title �Զ��ػ�����
:start
cls
echo. 
echo    	�����Ӧ���ֲ��Ұ���Enter�趨�ػ�
echo ==================================================
echo     ��1�� 1Сʱ��ػ�    ��2�� 1Сʱ30���Ӻ�ػ�
echo     ��3�� 2Сʱ��ػ�    ��4�� 2Сʱ30���Ӻ�ػ�
echo     ��5�� 3Сʱ��ػ�    ��6�� 3Сʱ30���Ӻ�ػ�
echo     ��7�� 4Сʱ��ػ�
echo.     
echo          	��9�� �Զ���ʱ���ػ�    
echo. 
echo     ��e�� �˳� 	             ��0�� ȡ���ػ�
echo ==================================================
echo. 
echo �����Ӧ���ֺ���Enter�趨�ػ�
echo �趨�ɹ�����Ļ���½�����ʾ
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
echo       	�Զ���ʱ����ػ�������Сʱ��
echo ==================================================
echo  ���롾b������Enter�ص����˵�
echo  ֱ�ӻس�����������(�޺�)
echo  ���������ý�������ǰ����
echo  ������������ָ����Ӧʱ���ػ�
echo  �������밴Enterȷ��
echo  ==��֧��С����==
echo  ������0����
echo ==================================================
echo  �趨____Сʱ
echo  �趨  ����
echo  ����ʱ�� %date% %time%
echo ==================================================
echo ��������Сʱ��
set /p h=
if %h%==C goto start1
if %h%==c goto start1
cls

echo. 
echo       	�Զ���ʱ����ػ������÷��ӣ�
echo ==================================================
echo  ���롾b������Enter�ص����˵�
echo  ���롾r������Enter������һ��
echo  ֱ�ӻس�����������(�޺�)
echo  ���������ý�������ǰ����
echo  ������������ָ����Ӧʱ���ػ�
echo  �������밴Enterȷ��
echo  ==��֧��С����==
echo ==================================================
echo  �趨%h%Сʱ
echo  �趨  ����
echo ����ʱ��%date% %time%
echo ==================================================
echo ����������ӣ�
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
echo ������ %h%Сʱ%min%���Ӻ�ػ�
echo �ظ��趨��������ǰ����
echo ȡ���ػ������롾C�� 
echo ���ز˵��밴Enter
echo ��������밴�س�ȷ��
echo ==================================================
set /p k1=

if %k1%==C shutdown -a
if %k1%==c shutdown -a
goto start