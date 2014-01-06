#!/bin/sh
#
# Wrapper script to run Splash under Xvfb. 
#
export DISPLAY=:99
/etc/init.d/Xvfb start

python -m splash.server $@
RET=$?

/etc/init.d/Xvfb stop

exit $RET


