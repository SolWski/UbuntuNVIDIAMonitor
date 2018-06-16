#!/bin/sh

doublequote=\" singlequote=\'

gnome-terminal --maximise

tmux new-session \; \
    send-keys '$ monitor' C-m \; \
    send-keys 'htop' C-m \; \
    split-window -v \; \
    send-keys "watch -n1 ${doublequote}nvidia-smi | grep ${singlequote}Default${singlequote}${doublequote}" C-m \; \
    split-window -h \;\
    send-keys "watch -n1 ${doublequote}sensors | grep -e ${singlequote}fan${singlequote} -e ${singlequote}SYSTIN${singlequote} -e ${singlequote}Package${singlequote}${doublequote}" C-m \; \

