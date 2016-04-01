#!/bin/bash
# 查看进程的数量和每个进程的内存使用情况，以及整体的使用情况
# useage: ./memory_s.sh php
echo -ne "进程名: $1 \n" 
ps -C $1 -O rss | gawk '{ count ++; sum += $2 };END {count --; print "进程数: ",count; print "内存使用大小/每个进程:",sum/1024/count, "MB"; print "内存使用(总):", sum/1024, "MB" ;};'
