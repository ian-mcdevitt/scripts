yarn && \
npx jetifier && \
case "$1" in
	XT)
		while true; do react-native run-android --variant=extremeterrainDebug; done
		;;
	AT)
		while true; do react-native run-android --variant=americantrucksDebug; done
		;;
	AM)
		while true; do react-native run-android --variant=americanmuscleDebug; done
		;;
	*)
		while true; do react-native run-android --variant=extremeterrainDebug; done
		;;
esac
