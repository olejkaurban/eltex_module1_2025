#!/bin/bash

if [ "$(basename "$0")" = "template_task.sh" ]; then echo "я бригадир, сам не работаю"
	exit 1
fi

script_name=$(basename "$0" .sh) log_file="report_${script_name}.log" pid=$$

echo "[${pid}] $(date '+%Y-%m-%d %H:%M:%S') Скрипт запущен" >> "${log_file}"

sleep_time=$((RANDOM % 1771 + 30)) # От 30 до 1800 секунд sleep "${sleep_time}"

work_time=$((sleep_time / 60))

echo "[${pid}] $(date '+%Y-%m-%d %H:%M:%S') Скрипт завершился, работал ${work_time} минут" >> "${log_file}"
