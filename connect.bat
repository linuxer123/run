@ECHO OFF 
SET dbhost=127.0.0.1
SET dbuser=tt
SET dbpasswd=123
set dbName=ck_digitalStore
SET sqlpath=%~dp0
set sqlfile=update.sql

echo ��ʼִ�����ݿ�ű�...
for %%i in (all_sql\*.sql) do (
echo ����ִ�� %%i ���Ժ�...
sqlcmd -S %dbhost% -U %dbuser% -P %dbpasswd% -d %dbName% -i "%sqlpath%%%i"

echo %%i ִ����ϡ�
)
ECHO ���!



@ECHO Done! 