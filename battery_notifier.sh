#!/bin/bash
export DISPLAY=:0

while (true) 
do
  battery=$(acpi | grep -o '[0-9]*%' | grep -o '[0-9]*');
  discharging=$(acpi -b | grep -c "Discharging");

  if [[ $discharging -eq 1 && $battery -lt 20 ]]; then
    notify-send -u critical "Warning: Low battery $battery%";
  fi

 sleep 5m;
done


