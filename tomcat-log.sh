
#!/bin/bash

CMD='less'

while getopts "tml" opt; do
	case $opt in
		t)
			CMD='tail -F'
		;;
		l)
			CMD='less'
		;;
		m)
			CMD='more'		   
		;;
	esac
done

$CMD $CATALINA_HOME/logs/catalina.out
