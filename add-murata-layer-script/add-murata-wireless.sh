cp ./sources/meta-murata-wireless/freescale/imx6ulevk.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx6ull14x14evk.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx6slevk.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx6sxsabresd.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx6qsabresd.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx6qpsabresd.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx6dlsabresd.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx8_all.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx8mmevk.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx8mmlpddr4evk.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx8mnevk.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx8mnlpddr4evk.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/
cp ./sources/meta-murata-wireless/freescale/imx8mnddr4evk.conf ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine/

#EULA=$EULA DISTRO=$DISTRO MACHINE=$MACHINE . ./sources/meta-fsl-bsp-release/imx/tools/fsl-setup-release.sh -b $@
. ./setup-environment $@

echo "INTERNAL_MIRROR = \"http://localhost\"" >> conf/local.conf
echo "CORE_IMAGE_EXTRA_INSTALL += \" hostap-conf hostap-utils hostapd murata-binaries iperf3 bluez5 bluez5-noinst-tools bluez5-obex openobex obexftp glibc-gconv-utf-16 glibc-utils python3\"" >> conf/local.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-murata-wireless \"" >> conf/bblayers.conf
echo ""
echo "CORRECTION: Murata modified the following files"
echo "  - bblayers.conf present in <BUILD_DIR>/conf"
echo "  - local.conf present in <BUILD_DIR>/conf"
echo "  - imx6ulevk.conf present in sources/meta-freescale/conf/machine"
echo "  - imx6ull14x14evk.conf present in ./sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo "  - imx6slevk.conf present in sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo "  - imx6sxsabresd.conf present in sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo "  - imx6qsabresd.conf present in sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo "  - imx6qpsabresd.conf present in sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo "  - imx6dlsabresd.conf present in sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo "  - imx8_all.conf present in sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo "  - imx8mmevk.conf present in sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo "  - imx8mmlpddr4evk.conf present in sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo "  - imx8mnevk.conf present in sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo "  - imx8mnlpddr4evk.conf present in sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo "  - imx8mnddr4evk.conf present in sources/meta-fsl-bsp-release/imx/meta-bsp/conf/machine"
echo ""
echo "Murata-Wireless setup complete. Create an image with:"
echo "    $ bitbake fsl-image-validation-imx"
echo ""
