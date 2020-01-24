#!/bin/bash
while (true) 
do
  battery=$(acpi | (grep -o '[0-9][0-9]') | head -1);
  discharging=$(acpi -b | grep -c "Discharging");

  if [[ $discharging -eq 1 && $battery -lt 20 ]]; then
    notify-send "Warning: Low battery $battery%";
  fi

 sleep 5m;
done


