#!/bin/sh

HDMI_NAME=`xrandr | grep HDMI | awk '{print $1}'`
DP_NAME='DisplayPort-0'
EDP_NAME=`xrandr | grep eDP | awk  '{print $1}'`
PRIMARY_NAME=`xrandr | grep primary | awk '{print $1}'`

DP_PRIMARY=`echo "${PRIMARY_NAME}" | awk -vX="$DP_NAME" '{if ($1 == X) {print "1"} else {print "0"}}'`
DP_CONNECTED=`xrandr | grep -w connected | grep ${DP_NAME} | awk '{print $1}'`

#echo "${HDMI_NAME}"
#echo "${EDP_NAME}"
#echo "${PRIMARY_NAME}"
#echo "${HDMI_PRIMARY}"
#echo "${HDMI_CONNECTED}"

if [[ $DP_CONNECTED ]]; then
	if [ $DP_PRIMARY == '1' ]; then
		xrandr --output ${EDP_NAME} --auto --primary --output ${DP_NAME} --off
	else
		xrandr --output ${DP_NAME} --auto --primary --output ${EDP_NAME} --off
	fi
else
	xrandr --output ${EDP_NAME} --auto --primary
fi

