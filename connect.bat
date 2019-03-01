@ECHO OFF 
SET dbhost=127.0.0.1
SET dbuser=tt
SET dbpasswd=123
set dbName=ck_digitalStore
SET sqlpath=%~dp0
set sqlfile=update.sql

echo 开始执行数据库脚本...
for %%i in (all_sql\*.sql) do (
echo 正在执行 %%i 请稍后...
sqlcmd -S %dbhost% -U %dbuser% -P %dbpasswd% -d %dbName% -i "%sqlpath%%%i"

echo %%i 执行完毕。
)
ECHO 完成!



@ECHO Done! 