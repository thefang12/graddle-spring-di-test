@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      http://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  using-spring-di startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and USING_SPRING_DI_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\using-spring-di.jar;%APP_HOME%\lib\quarkus-resteasy-0.13.1.jar;%APP_HOME%\lib\quarkus-spring-di-0.13.1.jar;%APP_HOME%\lib\spring-context-3.0.2.RELEASE.jar;%APP_HOME%\lib\quarkus-undertow-0.13.1.jar;%APP_HOME%\lib\quarkus-arc-0.13.1.jar;%APP_HOME%\lib\quarkus-resteasy-common-0.13.1.jar;%APP_HOME%\lib\quarkus-jaxb-0.13.1.jar;%APP_HOME%\lib\quarkus-core-0.13.1.jar;%APP_HOME%\lib\resteasy-core-4.0.0.CR2.jar;%APP_HOME%\lib\resteasy-core-spi-4.0.0.CR2.jar;%APP_HOME%\lib\validation-api-2.0.1.Final.jar;%APP_HOME%\lib\jakarta.activation-1.2.1.jar;%APP_HOME%\lib\spring-aop-5.0.5.RELEASE.jar;%APP_HOME%\lib\spring-beans-5.0.5.RELEASE.jar;%APP_HOME%\lib\spring-expression-5.0.5.RELEASE.jar;%APP_HOME%\lib\spring-core-5.0.5.RELEASE.jar;%APP_HOME%\lib\spring-asm-3.0.2.RELEASE.jar;%APP_HOME%\lib\smallrye-config-1.3.5.jar;%APP_HOME%\lib\arc-0.13.1.jar;%APP_HOME%\lib\cdi-api-2.0.SP1.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\undertow-servlet-1.4.23.Final.jar;%APP_HOME%\lib\undertow-core-1.4.23.Final.jar;%APP_HOME%\lib\xnio-nio-3.7.0.Final.jar;%APP_HOME%\lib\xnio-api-3.7.0.Final.jar;%APP_HOME%\lib\jboss-threads-3.0.0.Alpha4.jar;%APP_HOME%\lib\slf4j-jboss-logging-1.1.0.Final.jar;%APP_HOME%\lib\wildfly-elytron-ssl-2.0.0.Alpha1.jar;%APP_HOME%\lib\wildfly-elytron-auth-server-2.0.0.Alpha1.jar;%APP_HOME%\lib\wildfly-elytron-credential-2.0.0.Alpha1.jar;%APP_HOME%\lib\wildfly-elytron-auth-2.0.0.Alpha1.jar;%APP_HOME%\lib\wildfly-elytron-permission-2.0.0.Alpha1.jar;%APP_HOME%\lib\wildfly-elytron-util-2.0.0.Alpha1.jar;%APP_HOME%\lib\wildfly-elytron-base-2.0.0.Alpha1.jar;%APP_HOME%\lib\wildfly-elytron-x500-cert-2.0.0.Alpha1.jar;%APP_HOME%\lib\wildfly-elytron-x500-2.0.0.Alpha1.jar;%APP_HOME%\lib\wildfly-elytron-x500-cert-util-2.0.0.Alpha1.jar;%APP_HOME%\lib\wildfly-elytron-asn1-2.0.0.Alpha1.jar;%APP_HOME%\lib\jboss-logging-3.3.2.Final.jar;%APP_HOME%\lib\jboss-logmanager-embedded-1.0.3.jar;%APP_HOME%\lib\jboss-logging-annotations-2.1.0.Final.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\graal-sdk-1.0.0-rc14.jar;%APP_HOME%\lib\wildfly-common-1.5.0.Final-format-001.jar;%APP_HOME%\lib\jaxb-api-2.3.0.jar;%APP_HOME%\lib\spring-jcl-5.0.5.RELEASE.jar;%APP_HOME%\lib\microprofile-config-api-1.3.jar;%APP_HOME%\lib\jboss-servlet-api_3.1_spec-1.0.2.Final.jar;%APP_HOME%\lib\jboss-jaxrs-api_2.1_spec-1.0.2.Final.jar;%APP_HOME%\lib\jboss-jaxb-api_2.3_spec-1.0.1.Final.jar;%APP_HOME%\lib\reactive-streams-1.0.2.jar;%APP_HOME%\lib\httpclient-4.5.5.jar;%APP_HOME%\lib\commons-io-2.5.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar;%APP_HOME%\lib\org.osgi.annotation.versioning-1.0.0.jar;%APP_HOME%\lib\javax.el-api-3.0.0.jar;%APP_HOME%\lib\javax.interceptor-api-1.2.jar;%APP_HOME%\lib\httpcore-4.4.9.jar;%APP_HOME%\lib\commons-codec-1.11.jar

@rem Execute using-spring-di
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %USING_SPRING_DI_OPTS%  -classpath "%CLASSPATH%" org.acme.spring.di.GreeterResource %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable USING_SPRING_DI_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%USING_SPRING_DI_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
