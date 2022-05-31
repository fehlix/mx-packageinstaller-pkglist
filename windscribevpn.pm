<?xml version="1.0" encoding="UTF-8"?>
<app>

<category>
Network
</category>

<name>
Windscribe VPN
</name>

<description>
   <am>Windscribe VPN and sysVinit scripts</am>
   <ar>Windscribe VPN and sysVinit scripts</ar>
   <bg>Windscribe VPN and sysVinit scripts</bg>
   <bn>Windscribe VPN and sysVinit scripts</bn>
   <ca>Scripts per Windscribe VPN i sysVinit</ca>
   <cs>Windscribe VPN and sysVinit scripts</cs>
   <da>Windscribe VPN and sysVinit scripts</da>
   <de>Windscribe VPN aud sysVinit Skripte</de>
   <el>σενάρια του Windscribe VPN client και sysVinit</el>
   <en>Windscribe VPN and sysVinit scripts</en>
   <es>Windscribe VPN y sysVinit scripts</es>
   <et>Windscribe VPN and sysVinit scripts</et>
   <eu>Windscribe VPN and sysVinit scripts</eu>
   <fa>Windscribe VPN and sysVinit scripts</fa>
   <fil_PH>Windscribe VPN and sysVinit scripts</fil_PH>
   <fi>Windscribe VPN and sysVinit scripts</fi>
   <fr>Windscribe VPN and sysVinit scripts</fr>
   <he_IL>Windscribe VPN and sysVinit scripts</he_IL>
   <hi>Windscribe VPN and sysVinit scripts</hi>
   <hr>Windscribe VPN and sysVinit scripts</hr>
   <hu>Windscribe VPN and sysVinit scripts</hu>
   <id>Windscribe VPN and sysVinit scripts</id>
   <is>Windscribe VPN and sysVinit scripts</is>
   <it>Windscribe VPN and sysVinit scripts</it>
   <ja_JP>Windscribe VPN and sysVinit scripts</ja_JP>
   <ja>Windscribe VPN and sysVinit scripts</ja>
   <kk>Windscribe VPN and sysVinit scripts</kk>
   <ko>Windscribe VPN and sysVinit scripts</ko>
   <lt>Windscribe VPN and sysVinit scripts</lt>
   <mk>Windscribe VPN and sysVinit scripts</mk>
   <mr>Windscribe VPN and sysVinit scripts</mr>
   <nb>Windscribe VPN and sysVinit scripts</nb>
   <nl>Windscribe VPN and sysVinit scripts</nl>
   <pl>Skrypty Windscribe VPN i sysVinit</pl>
   <pt_BR>Windscribe VPN and sysVinit scripts</pt_BR>
   <pt>Scripts Windscribe VPN e sysVinit</pt>
   <ro>Windscribe VPN and sysVinit scripts</ro>
   <ru>Windscribe VPN и cкрипты sysVinit</ru>
   <sk>Windscribe VPN and sysVinit scripts</sk>
   <sl>Windscribe VPN in sysVinit skripti</sl>
   <sq>Windscribe VPN and sysVinit scripts</sq>
   <sr>Windscribe VPN and sysVinit scripts</sr>
   <sv>Windscribe VPN och sysVinit skript</sv>
   <tr>Windscribe VPN and sysVinit scripts</tr>
   <uk>Windscribe VPN and sysVinit scripts</uk>
   <vi>Windscribe VPN and sysVinit scripts</vi>
   <zh_CN>Windscribe VPN and sysVinit scripts</zh_CN>
   <zh_TW>Windscribe VPN and sysVinit scripts</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

INITHELPER=/usr/share/mx-packageinstaller-pkglist/windscribe_sysvinit_helper.sh

TMP_DIR=$(mktemp -d /tmp/mxpi-windscribe-installer.XXXXXXXXXX)
tidy_up() { rm -r /tmp/mxpi-windscribe-installer.* 2&gt;/dev/null ; }
trap tidy_up EXIT
chmod +xr $TMP_DIR
pushd $TMP_DIR &gt;/dev/null

DLD_URL=https://windscribe.net/install/desktop/linux_deb_x64/beta
DEB_URL=$(curl -sI $DLD_URL | grep -oP '^location: \Khttps://[0-9a-zA-Z/._-].*/windscribe[0-9a-zA-Z._-]*_amd64.deb')
DEB=${DEB_URL##*/}
echo " "
echo "Downloading ... $DEB"
echo "curl -RLJO $DEB_URL"
echo " "
curl -RLJO $DEB_URL
DEB=${DEB_URL##*/}
if [ ! -r "$DEB" ]; then
   echo "Error downloading $DEB"
   popd &gt;/dev/null
   exit 1
fi

HLP_SVC=$(dpkg --fsys-tarfile "$DEB" | 
          tar t | grep etc/systemd/system/windscribe-helper.service)
if [ -z "${HLP_SVC##*.service}" ]; then
   dpkg --fsys-tarfile $DEB | 
   tar -x "$HLP_SVC" -O     | 
   sysd2v.sh -n windscribe-helper  | 
   sed s/windscribe-helper-sysd2v.pid/windscribe-helper.pid/ > windscribe-helper
   chmod +x windscribe-helper
   cp windscribe-helper /etc/init.d/windscribe-helper 
fi
ar x "$DEB" control.tar.gz
mkdir AR
tar -C AR -xzf control.tar.gz
pushd AR &gt;/dev/null
sed -i "\:$INITHELPER:d" /var/lib/dpkg/info/windscribe.p* 2&gt;/dev/null
sed -i 's/sudo //' /var/lib/dpkg/info/windscribe.p* 2&gt;/dev/null
sed -i "2itest -r $INITHELPER &amp;&amp; source $INITHELPER" /var/lib/dpkg/info/windscribe.p*  2&gt;/dev/null
sed -i "2itest -r $INITHELPER &amp;&amp; source $INITHELPER" p*
sed -i 's/sudo //' p*
echo "# remove sysVinit script" >> prerm
echo "test -f /usr/local/bin/windscribe-cli &amp;&amp; rm /usr/local/bin/windscribe-cli" >> prerm
echo "test -f /etc/init.d/windscribe-helper &amp;&amp; rm /etc/init.d/windscribe-helper" >> prerm
rm ../control.tar.gz 
tar -czf ../control.tar.gz ./
popd &gt;/dev/null
cp $DEB ${DEB%.deb}.orig.deb
ar r $DEB control.tar.gz

dpkg --unpack $DEB
cp windscribe-helper /etc/init.d/windscribe-helper 
dpkg --configure windscribe
apt-get -y install -f
echo "...$(gettext -d apt -s ' Done')!"
</preinstall>

<install_package_names>

</install_package_names>

<postinstall>

</postinstall>

<uninstall_package_names>
windscribe
</uninstall_package_names>

<postuninstall>
test -f /etc/init.d/windscribe-helper &amp;&amp; rm /etc/init.d/windscribe-helper
echo "...$(gettext -d apt -s ' Done')!"
</postuninstall>

</app>