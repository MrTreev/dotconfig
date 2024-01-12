#!/bin/sh
xrandr \
	--output DisplayPort-0 \
		--primary \
		--mode 3840x2160 \
		--pos 6000x0 \
		--rotate left \
	--output DisplayPort-1 \
		--mode 3840x2160 \
		--pos 0x0 \
		--rotate right \
	--output DisplayPort-2 \
		--mode 3840x2160 \
		--pos 2160x2160 \
		--rotate normal \
	--output HDMI-A-0 \
		--off \
	--output HDMI-A-1-1 \
		--off \
	--output DisplayPort-1-3 \
		--mode 3840x2160 \
		--pos 2160x0 \
		--rotate normal \
	--output DisplayPort-1-4 \
		--off \
	--output DisplayPort-1-5 \
		--off \
&& setbg
