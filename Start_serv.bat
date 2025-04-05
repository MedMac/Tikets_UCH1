@echo off
chcp 65001 >nul
echo Запуск Flask-сервера...

REM Создание папки для логов, если не существует
if not exist logs (
    mkdir logs
)

REM Генерация имени лог-файла
set LOG_FILE=logs\flask_server_%date:~-4%-%date:~3,2%-%date:~0,2%_%time:~0,2%%time:~3,2%%time:~6,2%.log

REM Запуск сервера с выводом логов
python run.py > %LOG_FILE% 2>&1

echo Лог: %LOG_FILE%
echo Сервер остановлен. Нажмите любую клавишу...
pause
