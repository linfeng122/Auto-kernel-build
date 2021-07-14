CLANG_DIR=../clang
export KBUILD_BUILD_USER="zclkkk"
export KBUILD_BUILD_HOST="Workspace"
args="O=../out \
	ARCH=arm64 \
	CC=${CLANG_DIR}/bin/clang \
	CLANG_TRIPLE=aarch64-linux-gnu- \
	CROSS_COMPILE=aarch64-linux-gnu- \
	CROSS_COMPILE_ARM32=arm-linux-gnueabi- \
	LD=${CLANG_DIR}/bin/ld.lld"
make ${args} umi_defconfig
make -j$(nproc --all) ${args}
