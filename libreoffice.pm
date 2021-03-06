<?xml version="1.0"?>
<app>

<category>
Office
</category>

<name>
LibreOffice
</name>

<description>
   <am>Meta-Package for LibreOffice</am>
   <ar>Meta-Package for LibreOffice</ar>
   <bg>Meta-Package for LibreOffice</bg>
   <bn>Meta-Package for LibreOffice</bn>
   <ca>Metapaquet per LibreOffice</ca>
   <cs>Meta-Package for LibreOffice</cs>
   <da>Meta-Package for LibreOffice</da>
   <de>Meta-Paket für LibreOffice</de>
   <el>Meta-Package για το LibreOffice</el>
   <en>Meta-Package for LibreOffice</en>
   <es>Meta-Package para LibreOffice</es>
   <et>Meta-Package for LibreOffice</et>
   <eu>Meta-Package for LibreOffice</eu>
   <fa>Meta-Package for LibreOffice</fa>
   <fil_PH>Meta-Package for LibreOffice</fil_PH>
   <fi>Meta-Package for LibreOffice</fi>
   <fr>Meta-Package for LibreOffice</fr>
   <he_IL>Meta-Package for LibreOffice</he_IL>
   <hi>Meta-Package for LibreOffice</hi>
   <hr>Meta-Package for LibreOffice</hr>
   <hu>Meta-Package for LibreOffice</hu>
   <id>Meta-Package for LibreOffice</id>
   <is>Meta-Package for LibreOffice</is>
   <it>Meta-pacchetto per LibreOffice</it>
   <ja_JP>Meta-Package for LibreOffice</ja_JP>
   <ja>Meta-Package for LibreOffice</ja>
   <kk>Meta-Package for LibreOffice</kk>
   <ko>Meta-Package for LibreOffice</ko>
   <lt>Meta-Package for LibreOffice</lt>
   <mk>Meta-Package for LibreOffice</mk>
   <mr>Meta-Package for LibreOffice</mr>
   <nb>Meta-Package for LibreOffice</nb>
   <nl>Meta-Pakket voor LibreOffice</nl>
   <pl>Meta-Pakiet dla LibreOffice</pl>
   <pt_BR>Meta-Package for LibreOffice</pt_BR>
   <pt>Meta-Pacote para LibreOffice</pt>
   <ro>Meta-Package for LibreOffice</ro>
   <ru>Мета-пакет для LibreOffice</ru>
   <sk>Meta-Package for LibreOffice</sk>
   <sl>Meta-paket za LibreOffice</sl>
   <sq>Meta-Package for LibreOffice</sq>
   <sr>Meta-Package for LibreOffice</sr>
   <sv>Meta-Paket för LibreOffice</sv>
   <tr>Meta-Package for LibreOffice</tr>
   <uk>Meta-Package for LibreOffice</uk>
   <vi>Meta-Package for LibreOffice</vi>
   <zh_CN>Meta-Package for LibreOffice</zh_CN>
   <zh_TW>Meta-Package for LibreOffice</zh_TW>
</description>

<installable>
32,64
</installable>

<screenshot></screenshot>

<preinstall>

lo-installer.sh --main --reinstall --extra libreoffice-style-colibre lo-main-helper
if [ "$?" = "0" ]; then
   apt-get --yes  -o=Dpkg::Use-Pty=0 install --reinstall libreoffice-base
fi

</preinstall>

<install_package_names>

</install_package_names>


<postinstall>

</postinstall>

<uninstall_package_names>
libreoffice-base
libreoffice-calc
libreoffice-draw
libreoffice-impress
libreoffice-math
libreoffice-writer
ure
lo-main-helper
</uninstall_package_names>
</app>
