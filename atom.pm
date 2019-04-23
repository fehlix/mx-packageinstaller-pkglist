<?xml version="1.0"?>
<app>

<category>
Development
</category>

<name>
atom
</name>

<description>
   <am>atom text editor IDE</am>
   <ar>atom text editor IDE</ar>
   <bg>atom text editor IDE</bg>
   <ca>atom text editor IDE</ca>
   <cs>atom text editor IDE</cs>
   <da>atom-tekstredigerings-IDE</da>
   <de>IDE des Atom Textprogramms</de>
   <el>πρόγραμμα επεξεργασίας κειμένου IDE</el>
   <en>atom text editor IDE</en>
   <es>atom text editor IDE</es>
   <et>atom text editor IDE</et>
   <eu>atom text editor IDE</eu>
   <fa>atom text editor IDE</fa>
   <fi>atom text editor IDE</fi>
   <fr>IDE pour l'éditeur de texte Atom</fr>
   <he_IL>atom text editor IDE</he_IL>
   <hi>atom text editor IDE</hi>
   <hr>atom text editor IDE</hr>
   <hu>atom text editor IDE</hu>
   <id>atom text editor IDE</id>
   <is>atom text editor IDE</is>
   <it>atom editor di testo IDE</it>
   <ja_JP>atom text editor IDE</ja_JP>
   <ja>atom text editor IDE</ja>
   <kk>atom text editor IDE</kk>
   <ko>atom text editor IDE</ko>
   <lt>atom text editor IDE</lt>
   <mk>atom text editor IDE</mk>
   <nb>atom text editor IDE</nb>
   <nl>atom text editor IDE</nl>
   <pl>edytor tekstu atom IDE</pl>
   <pt_BR>atom text editor IDE</pt_BR>
   <pt>atom text editor IDE</pt>
   <ro>atom text editor IDE</ro>
   <ru>Текстовый редактор и среда разработки Atom</ru>
   <sk>atom text editor IDE</sk>
   <sl>atom text editor IDE</sl>
   <sq>atom text editor IDE</sq>
   <sr>atom text editor IDE</sr>
   <sv>atom textredigerare IDE</sv>
   <tr>atom text editor IDE</tr>
   <uk>atom text editor IDE</uk>
   <zh_CN>atom text editor IDE</zh_CN>
   <zh_TW>atom text editor IDE</zh_TW>
</description>

<installable>
64
</installable>

<screenshot>https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Screenshot_of_Atom_editor.png/800px-Screenshot_of_Atom_editor.png</screenshot>

<preinstall>
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | apt-key add -
echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main">/etc/apt/sources.list.d/atom.list
apt-get update
</preinstall>

<install_package_names>
atom
</install_package_names>


<postinstall>

</postinstall>


<uninstall_package_names>
atom
</uninstall_package_names>
</app>