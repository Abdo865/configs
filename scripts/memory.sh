#!/bin/sh
 
# get memory info
MEMUSED=$(free --mebi | grep Mem | awk '{printf "%.2fG / %0.2fG", $3/1024, $2/1024}')
MEMUSED2=$(free --mebi | grep Mem | awk '{printf "Memory: %d M of %d M used", $3, $2}')

# do the genmon
# echo "<txt>$MEMUSED</txt><txtclick>resources</txtclick>"
# echo "<tool>$MEMUSED2</tool>"
echo "<txt>Hello World!</txt>"

