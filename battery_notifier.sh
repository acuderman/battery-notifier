#!/bin/bash
getBatteryPercentage="acpi | (grep -o '[0-9][0-9]')";
previousBattery=$(eval $getBatteryPercentage);

while (true) 
do
  currentBattery=$(eval $getBatteryPercentage);

  if [[ $previousBattery -gt $currentBattery && $currentBattery -lt 20 ]]; then
    notify-send "Low battery $currentBattery%";
  fi
  let previousBattery=$currentBattery;
  sleep 5m;
done


