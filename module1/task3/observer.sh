#!/bin/bash
log_file="observer.log"

while read -r script; do if [ -n "$script" ] && [ -f "$script" ]; then
        # Проверка, работает ли скрипт
        if ! pgrep -f "$(basename "$script" .sh)" > /dev/null; then echo "$(date '+%Y-%m-%d %H:%M:%S') Перезапуск скрипта $script" >> "$log_file" 
            nohup "$script" > /dev/null 2>&1 &
        fi fi
done < observer.conf
