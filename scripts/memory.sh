#!/bin/sh
 
# get memory info
MEMUSED=$(free --mebi | grep Mem | awk '{printf "%.2fG / %0.2fG", $3/1024, $2/1024}')

# do the genmon
echo "<txt>$MEMUSED</txt><txtclick>gnome-system-monitor</txtclick>"
echo "<tool> 
free --mebi | grep Mem | awk '{printf "Memory: %d M of %d M used", $3, $2}'
</tool>"
 
exit 0
