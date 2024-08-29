#!/bin/bash

# Get the window ID of the currently active window
window_id=$(xdotool getactivewindow 2>/dev/null)

# Check if window_id is empty
if [ -z "$window_id" ]; then
  echo "[ ] = Desktop"
  exit 0
fi

# Get the process ID (PID) associated with this window
pid=$(xdotool getwindowpid $window_id 2>/dev/null)

# Check if pid is empty
if [ -z "$pid" ]; then
  echo "[ ] = Desktop"
  exit 0
fi

# Get the executable name associated with this PID
program_name=$(ps -p $pid -o comm=)

echo [ ] = $program_name
