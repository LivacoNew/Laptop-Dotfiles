# Standard place for all my notifcation logic 

volumeNotification() {
  muted=$(pamixer --get-mute)
  if [[ $muted == "true" ]]
  then 
    dunstify -h string:x-dunst-stack-tag:volume-level "Volume Level" "Volume Muted."
    exit
  fi
  vol=$(pamixer --get-volume)
  dunstify -h string:x-dunst-stack-tag:volume-level "Volume Level" $vol%
}

backlightNotification() {
  backlight=$(xbacklight -get)
  dunstify -h string:x-dunst-stack-tag:backlight-level "Backlight Level" $backlight%
}
