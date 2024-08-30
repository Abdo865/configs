#!/bin/bash

# Get the window ID of the currently active window
WINDOW_ID=$(xdotool getactivewindow 2>/dev/null)

# Get the process ID (PID) associated with this window
PID=$(xdotool getwindowpid $WINDOW_ID 2>/dev/null)

# Get the executable name associated with this PID
PROGRAM_NAME=$(ps -p $PID -o comm=)

echo "<txt>[ ] = $PROGRAM_NAME</txt>"
