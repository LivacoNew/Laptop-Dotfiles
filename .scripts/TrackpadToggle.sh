DEVICE="asue1211:00-04f3:3211-touchpad"

state=`cat ~/.scripts/TrackpadCache`

if [[ $state == "enabled" ]]
then 
  hyprctl keyword "device:$DEVICE:enabled" false
  dunstify -h string:x-dunst-stack-tag:trackpad-toggle "Trackpad" "Trackpad Disabled."
  state="disabled"
else
  hyprctl keyword "device:$DEVICE:enabled" true 
  dunstify -h string:x-dunst-stack-tag:trackpad-toggle "Trackpad" "Trackpad Enabled."
  state="enabled"
fi 

echo $state > ~/.scripts/TrackpadCache
