<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>
antiX 4.18 64 bit
</name>

<description>
   <am>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</am>
   <ca>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</ca>
   <cs>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</cs>
   <de>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</de>
   <el>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</el>
   <en>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</en>
   <es>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</es>
   <fi>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</fi>
   <fr>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</fr>
   <hi>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</hi>
   <hr>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</hr>
   <hu>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</hu>
   <it>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</it>
   <ja>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</ja>
   <kk>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</kk>
   <lt>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</lt>
   <nl>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</nl>
   <pl>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</pl>
   <pt_BR>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</pt_BR>
   <pt>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</pt>
   <ro>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</ro>
   <ru>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</ru>
   <sk>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</sk>
   <sv>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</sv>
   <tr>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</tr>
   <uk>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</uk>
   <zh_TW>antiX 4.18.7 kernel Meltdown and Spectre patched, 64 bit</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>none</screenshot>

<preinstall>

</preinstall>

<install_package_names>
linux-image-4.18.7-antix.1-amd64-smp
linux-headers-4.18.7-antix.1-amd64-smp
</install_package_names>


<postinstall>
/usr/share/mx-packageinstaller-pkglist/rebuild_dkms_packages.sh linux-image-4.18.7-antix.1-amd64-smp
</postinstall>


<uninstall_package_names>
linux-image-4.18.7-antix.1-amd64-smp
linux-headers-4.18.7-antix.1-amd64-smp
</uninstall_package_names>
</app>