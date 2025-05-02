@echo off
echo Creating temporary directory...
set TEMP_DIR=pixelnft-temp
if not exist %TEMP_DIR% mkdir %TEMP_DIR%

echo Copying frontend files...
if not exist %TEMP_DIR%\frontend mkdir %TEMP_DIR%\frontend
xcopy /E /I frontend\src %TEMP_DIR%\frontend\src
copy frontend\package.json %TEMP_DIR%\frontend\
copy frontend\tsconfig.json %TEMP_DIR%\frontend\
copy frontend\tsconfig.node.json %TEMP_DIR%\frontend\
copy frontend\vite.config.ts %TEMP_DIR%\frontend\
copy frontend\.env.example %TEMP_DIR%\frontend\

echo Copying backend files...
if not exist %TEMP_DIR%\backend mkdir %TEMP_DIR%\backend
xcopy /E /I backend\src %TEMP_DIR%\backend\src
copy backend\package.json %TEMP_DIR%\backend\
copy backend\tsconfig.json %TEMP_DIR%\backend\
copy backend\.env.example %TEMP_DIR%\backend\

echo Copying contract files...
if not exist %TEMP_DIR%\contracts mkdir %TEMP_DIR%\contracts
xcopy /E /I contracts %TEMP_DIR%\contracts

echo Copying documentation and scripts...
copy README.md %TEMP_DIR%\
copy deploy.sh %TEMP_DIR%\
copy package.bat %TEMP_DIR%\

echo Creating zip file...
powershell Compress-Archive -Path %TEMP_DIR%\* -DestinationPath pixelnft.zip -Force

echo Cleaning up...
rmdir /S /Q %TEMP_DIR%

echo Package created: pixelnft.zip
echo Contents:
echo - Frontend source code
echo - Backend source code
echo - Smart contracts
echo - Documentation
echo - Deployment scripts 