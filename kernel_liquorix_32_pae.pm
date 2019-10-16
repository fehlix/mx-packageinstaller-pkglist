<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
Liquorix 32 bit pae
</name>

<description>
   <am>Liquorix Kernel (PAE, latest from MX TEST repo)</am>
   <ar>Liquorix Kernel (PAE, latest from MX TEST repo)</ar>
   <bg>Liquorix Kernel (PAE, latest from MX TEST repo)</bg>
   <ca>Kernel Liquorix (PAE, darrer del dipòsit MX TEST)</ca>
   <cs>Liquorix Kernel (PAE, latest from MX TEST repo)</cs>
   <da>Liquorix-kerne (PAE, seneste fra MX TEST-softwarekilde)</da>
   <de>Liquorix Kernel (PAE, neueste Version von MX TEST repo)</de>
   <el>Liquorix Kernel (PAE, τελευταία από το MX TEST repo)</el>
   <en>Liquorix Kernel (PAE, latest from MX TEST repo)</en>
   <es>Kernel Liquorix (PAE, último del repositorio MX TEST)</es>
   <et>Liquorix Kernel (PAE, latest from MX TEST repo)</et>
   <eu>Liquorix Kernel (PAE, latest from MX TEST repo)</eu>
   <fa>Liquorix Kernel (PAE, latest from MX TEST repo)</fa>
   <fi>Liquorix Kernel (PAE, latest from MX TEST repo)</fi>
   <fr>Noyau Liquorix (PAE, dernier du dépôt de test MX)</fr>
   <he_IL>Liquorix Kernel (PAE, latest from MX TEST repo)</he_IL>
   <hi>Liquorix Kernel (PAE, latest from MX TEST repo)</hi>
   <hr>Liquorix Kernel (PAE, latest from MX TEST repo)</hr>
   <hu>Liquorix Kernel (PAE, latest from MX TEST repo)</hu>
   <id>Liquorix Kernel (PAE, latest from MX TEST repo)</id>
   <is>Liquorix Kernel (PAE, latest from MX TEST repo)</is>
   <it>Liquorix Kernel (PAE, ultimo da MX TEST repo)</it>
   <ja_JP>Liquorix Kernel (PAE, latest from MX TEST repo)</ja_JP>
   <ja>Liquorix Kernel (PAE, latest from MX TEST repo)</ja>
   <kk>Liquorix Kernel (PAE, latest from MX TEST repo)</kk>
   <ko>Liquorix Kernel (PAE, latest from MX TEST repo)</ko>
   <lt>Liquorix Kernel (PAE, latest from MX TEST repo)</lt>
   <mk>Liquorix Kernel (PAE, latest from MX TEST repo)</mk>
   <mr>Liquorix Kernel (PAE, latest from MX TEST repo)</mr>
   <nb>Liquorix Kernel (PAE, latest from MX TEST repo)</nb>
   <nl>Liquorix Kernel (PAE, laatste vanuit MX TEST pakketbron)</nl>
   <pl>Liquorix Kernel (PAE, latest from MX TEST repo)</pl>
   <pt_BR>Liquorix Kernel (PAE, latest from MX TEST repo)</pt_BR>
   <pt>Núcleo Liquorix (PAE, mais recente no MX TEST repo)</pt>
   <ro>Liquorix Kernel (PAE, latest from MX TEST repo)</ro>
   <ru>Liquorix ядро (PAE, последнее из репозитория MX TEST)</ru>
   <sk>Liquorix Kernel (PAE, latest from MX TEST repo)</sk>
   <sl>Liquorix Kernel (PAE, latest from MX TEST repo)</sl>
   <sq>Liquorix Kernel (PAE, latest from MX TEST repo)</sq>
   <sr>Liquorix Kernel (PAE, latest from MX TEST repo)</sr>
   <sv>Liquorix Kärna (PAE, senaste från MX TEST repo)</sv>
   <tr>Liquorix Kernel (PAE, latest from MX TEST repo)</tr>
   <uk>Liquorix Kernel (PAE, latest from MX TEST repo)</uk>
   <zh_CN>Liquorix Kernel (PAE, latest from MX TEST repo)</zh_CN>
   <zh_TW>Liquorix Kernel (PAE, latest from MX TEST repo)</zh_TW>
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://mxrepo.com/mx/testrepo/ buster test">/etc/apt/sources.list.d/mxpitemp.list
apt-get update
</preinstall>

<install_package_names>
linux-image-liquorix-686-pae
linux-headers-liquorix-686-pae
broadcom-sta-dkms
ndiswrapper-dkms
</install_package_names>


<postinstall>
rebuild_dkms_packages.sh linux-image-liquorix-686-pae
rm -f /etc/apt/sources.list.d/mxpitemp.list
apt-get -y remove linux-image-liquorix-686-pae linux-headers-liquorix-686-pae
apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
