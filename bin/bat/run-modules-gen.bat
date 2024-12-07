@echo off
echo.
echo [��Ϣ] ʹ��Jar��������Modules-Gen���̡�
echo.

cd %~dp0
cd ../../ruoyi-modules/ruoyi-gen/target

set JAVA_OPTS=-Xms128m -Xmx256m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=256m

java -Dfile.encoding=utf-8 %JAVA_OPTS% -jar ruoyi-modules-gen.jar

cd bin
pause