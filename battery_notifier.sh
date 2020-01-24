#!/bin/bash
getBatteryPercentage="acpi | (grep -o '[0-9][0-9]') | head -1";
previousBattery=$(eval $getBatteryPercentage);

while (true) 
do
  currentBattery=$(eval $getBatteryPercentage);
  echo "current $currentBattery";
  echo "previousBattery $previousBattery";
  if [[ $previousBattery -gt $currentBattery && $currentBattery -lt 20 ]]; then
    notify-send "Low battery $currentBattery%";
  fi
 let previousBattery=$currentBattery;
 sleep 5m;
done


