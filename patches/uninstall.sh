echo $1
rootdirectory="$PWD"
# ---------------------------------

<<<<<<< HEAD
dirs="frameworks/base system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	#cd $dir
	echo "Reverting $dir patches..."
	#git apply --reverse $rootdirectory/device/umi/SUPER/patches/$dir/*.patch
	repo sync $dir
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
