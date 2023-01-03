@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\XAMPP\App\xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\XAMPP\App\xampp\ingres\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\ingres\scripts\ctl.bat START)
if exist D:\XAMPP\App\xampp\mysql\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\mysql\scripts\ctl.bat START)
if exist D:\XAMPP\App\xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\postgresql\scripts\ctl.bat START)
if exist D:\XAMPP\App\xampp\apache\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\apache\scripts\ctl.bat START)
if exist D:\XAMPP\App\xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\openoffice\scripts\ctl.bat START)
if exist D:\XAMPP\App\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\apache-tomcat\scripts\ctl.bat START)
if exist D:\XAMPP\App\xampp\resin\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\resin\scripts\ctl.bat START)
if exist D:\XAMPP\App\xampp\jetty\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\jetty\scripts\ctl.bat START)
if exist D:\XAMPP\App\xampp\subversion\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\XAMPP\App\xampp\lucene\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\lucene\scripts\ctl.bat START)
if exist D:\XAMPP\App\xampp\third_application\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\XAMPP\App\xampp\third_application\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\third_application\scripts\ctl.bat STOP)
if exist D:\XAMPP\App\xampp\lucene\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\XAMPP\App\xampp\subversion\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\subversion\scripts\ctl.bat STOP)
if exist D:\XAMPP\App\xampp\jetty\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\jetty\scripts\ctl.bat STOP)
if exist D:\XAMPP\App\xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\XAMPP\App\xampp\resin\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\resin\scripts\ctl.bat STOP)
if exist D:\XAMPP\App\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\XAMPP\App\xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\XAMPP\App\xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\openoffice\scripts\ctl.bat STOP)
if exist D:\XAMPP\App\xampp\apache\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\apache\scripts\ctl.bat STOP)
if exist D:\XAMPP\App\xampp\ingres\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\ingres\scripts\ctl.bat STOP)
if exist D:\XAMPP\App\xampp\mysql\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\mysql\scripts\ctl.bat STOP)
if exist D:\XAMPP\App\xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\XAMPP\App\xampp\postgresql\scripts\ctl.bat STOP)

:end

