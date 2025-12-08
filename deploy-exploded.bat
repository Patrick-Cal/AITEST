@echo off
REM Maven 프로젝트를 컴파일하고 exploded 형태로 배포하는 스크립트

REM 프로젝트 디렉토리 설정
set PROJECT_HOME=%~dp0%BroadleafCommerce
set TOMCAT_WEBAPPS=%~dp0%tomcat-9.0.104\webapps

REM Maven 컴파일
echo Maven 컴파일 중...
cd /d "%PROJECT_HOME%"
call mvn compile -pl admin/broadleaf-admin-module

REM 컴파일된 클래스 파일을 Tomcat의 exploded 디렉토리로 복사
echo 클래스 파일 복사 중...
xcopy /Y /E "%PROJECT_HOME%\admin\broadleaf-admin-module\target\classes\*" "%TOMCAT_WEBAPPS%\admin\WEB-INF\classes\"

echo 배포 완료!