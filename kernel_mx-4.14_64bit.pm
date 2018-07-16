<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
MX 4.14
</name>

<description>
   <am>MX 4.14 kernel Meltdown patched, 64 bit</am>
   <ca>MX 4.14 kernel Meltdown patched, 64 bit</ca>
   <cs>MX 4.14 kernel Meltdown patched, 64 bit</cs>
   <de>MX 4.14 Kernel Meltdown gepatcht, 64 Bit</de>
   <el>MX 4.14 kernel Meltdown patched, 64 bit</el>
   <en>MX 4.14 kernel Meltdown patched, 64 bit</en>
   <es>MX 4.14 kernel Meltdown patched, 64 bit</es>
   <fi>MX 4.14 kernel Meltdown patched, 64 bit</fi>
   <fr>Noyau MX 4.14 corrections Meltdown, 64 bit</fr>
   <hi>MX 4.14 kernel Meltdown patched, 64 bit</hi>
   <hr>MX 4.14 kernel Meltdown patched, 64 bit</hr>
   <hu>MX 4.14 kernel Meltdown patched, 64 bit</hu>
   <it>MX 4.14 kernel Meltdown patched, 64 bit</it>
   <ja>MX 4.14 kernel Meltdown patched, 64 bit</ja>
   <kk>MX 4.14 kernel Meltdown patched, 64 bit</kk>
   <lt>MX 4.14 kernel Meltdown patched, 64 bit</lt>
   <nl>MX 4.14 kernel Meltdown patched, 64 bit</nl>
   <pl>MX 4.14 kernel Meltdown patched, 64 bit</pl>
   <pt_BR>MX 4.14 kernel Meltdown patched, 64 bit</pt_BR>
   <pt>MX 4.14 kernel Meltdown patched, 64 bit</pt>
   <ro>MX 4.14 kernel Meltdown patched, 64 bit</ro>
   <ru>MX 4.14 kernel Meltdown patched, 64 bit</ru>
   <sk>MX 4.14 kernel Meltdown patched, 64 bit</sk>
   <sv>MX 4.14 kärna Meltdown patched, 64 bit</sv>
   <tr>MX 4.14 kernel Meltdown patched, 64 bit</tr>
   <uk>MX 4.14 kernel Meltdown patched, 64 bit</uk>
   <zh_TW>MX 4.14 kernel Meltdown patched, 64 bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.14.0-3-amd64
linux-headers-4.14.0-3-amd64
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.14.0-3-amd64
</postinstall>


<uninstall_package_names>
linux-image-4.14.0-3-amd64
linux-headers-4.14.0-3-amd64
</uninstall_package_names>
</app>
