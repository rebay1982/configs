#!/bin/sh

HDMI_NAME=`xrandr | grep HDMI | awk '{print $1}'`
EDP_NAME=`xrandr | grep eDP | awk  '{print $1}'`
PRIMARY_NAME=`xrandr | grep primary | awk '{print $1}'`

HDMI_PRIMARY=`echo "${PRIMARY_NAME}" | awk -vX="$HDMI_NAME" '{if ($1 == X) {print "1"} else {print "0"}}'`
HDMI_CONNECTED=`xrandr | grep -w connected | grep ${HDMI_NAME} | awk '{print $1}'`

#echo "${HDMI_NAME}"
#echo "${EDP_NAME}"
#echo "${PRIMARY_NAME}"
#echo "${HDMI_PRIMARY}"
#echo "${HDMI_CONNECTED}"

if [[ $HDMI_CONNECTED ]]; then
	if [ $HDMI_PRIMARY == '1' ]; then
		xrandr --output ${EDP_NAME} --auto --primary --output ${HDMI_NAME} --off
	else
		xrandr --output ${HDMI_NAME} --auto --primary --output ${EDP_NAME} --off
	fi
else
	xrandr --output ${EDP_NAME} --auto --primary
fi

