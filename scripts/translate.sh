#!/bin/bash

TARGET_LANG="ru"

SELECTED_TEXT=$(wl-paste)

if [ -z "$SELECTED_TEXT" ]; then
    notify-send "Ошибка" "Буфер обмена пуст"
    exit 1
fi

TRANSLATION=$(trans -b -no-ansi :$TARGET_LANG "$SELECTED_TEXT")

notify-send "$TRANSLATION"
