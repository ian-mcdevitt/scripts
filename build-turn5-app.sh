yarn && \
npx jetifier && \
case "$1" in
	XT)
		react-native run-android --variant=extremeterrainRelease
		;;
	AT)
		react-native run-android --variant=americantrucksRelease
		;;
	AM)
		react-native run-android --variant=americanmuscleRelease
		;;
	*)
		react-native run-android --variant=extremeterrainRelease
		;;
esac
