SECONDS=0 # builtin bash timer
ZIPNAME="MataneTjok_Kernel-$(date '+%Y%m%d-%H%M').zip"
TC_DIR="$HOME/kernel/clang"
DEFCONFIG="vendor/RMX1911_defconfig"
ANY="$HOME/kernel/any"

export PATH="$TC_DIR/bin:$PATH"

if ! [ -d "$ANY" ]; then
echo "AnyKernel3 not found! Cloning to $ANY..."
if ! git clone -q --depth=1 --single-branch https://github.com/NganuCoeg/AnyKernel3 $ANY; then
echo "Cloning failed! Aborting..."

fi
fi

if ! [ -d "$TC_DIR" ]; then
echo "Clang not found! Cloning to $TC_DIR..."
if ! git clone -q --depth=1 --single-branch https://github.com/xyz-prjkt/xRageTC-clang $TC_DIR; then
echo "Cloning failed! Aborting..."

fi
fi

export KBUILD_BUILD_USER=MataneTjok
export KBUILD_BUILD_HOST=HapeGeming

if [[ $1 = "-r" || $1 = "--regen" ]]; then
make O=out ARCH=arm64 $DEFCONFIG savedefconfig
cp out/defconfig arch/arm64/configs/$DEFCONFIG
exit
fi

if [[ $1 = "-c" || $1 = "--clean" ]]; then
rm -rf out
fi

mkdir -p out
make O=out ARCH=arm64 $DEFCONFIG

echo -e "\nStarting compilation...\n"
make -j$(nproc --all) CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_ARM32=arm-linux-gnueabi- CC=clang O=out ARCH=arm64 2>&1 | tee log.txt
if [ -f "out/arch/arm64/boot/Image.gz-dtb" ] && [ -f "out/arch/arm64/boot/dtbo.img" ]; then
echo -e "\nKernel compiled succesfully! Zipping up...\n"

fi
cp out/arch/arm64/boot/Image.gz-dtb $(pwd)/any
cd any
rm -f *.zip
zip -r9 "../$ZIPNAME" * -x '*.git*' README.md *placeholder
echo -e "\n REMOVING Image.gz-dtb in AnyKernel3 folder\n"
rm -rf Image.gz-dtb
echo -e "\n REMOVING Image.gz-dtb and dtbo.img in out folder\n"
cd $HOME/kernel/out/arch/arm64/boot
rm -rf Image.gz-dtb && rm -rf dtbo.img
echo -e "\nCompleted in $((SECONDS / 60)) minute(s) and $((SECONDS % 60)) second(s) !"
echo "Zip: $ZIPNAME"
cd $HOME/kernel
