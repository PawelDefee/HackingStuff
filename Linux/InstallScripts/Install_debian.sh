echo "#Time for Java !"
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
aptitude update
aptitude upgrade
apt-get install guake i8kutils lm-sensors virtualbox chromium-browser zsh git curl filezilla wget keepass2 pidgin oracle-java8-installer
curl -L http://install.ohmyz.sh | sh
aptitude -r install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') fglrx-driver
aticonfig --initial
cd /tmp/
wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_amd64.deb -O subl.deb
dpkg -i subl.deb
wget https://www.dropbox.com/download?dl=packages/debian/dropbox_1.6.2_amd64.deb -O dropbox.deb
dpkg -i dropbox.deb
echo "shoxx ALL=(ALL:ALL) ALL" >> /etc/sudoers
echo "#Configure i8kmon"
echo "i8k" >> /etc/modules
echo "i8k force=1" >> /etc/modprobe.d/options
modprobe i8k force=1

echo "# Run as daemon, override with --daemon option" >> /etc/i8kmon
echo "set config(daemon)      0" >> /etc/i8kmon

echo "# Automatic fan control, override with --auto option" >> /etc/i8kmon
echo "set config(auto)        1" >> /etc/i8kmon

echo "# Report status on stdout, override with --verbose option" >> /etc/i8kmon
echo "set config(verbose)	1" >> /etc/i8kmon

echo "# Status check timeout (seconds), override with --timeout option" >> /etc/i8kmon
echo "set config(timeout)	1" >> /etc/i8kmon

echo "# Temperature thresholds: {fan_speeds low_ac high_ac low_batt high_batt}" >> /etc/i8kmon
echo "set config(0)   {{-1 0}  -1  55  -1  55}" >> /etc/i8kmon
echo "set config(1)   {{-1 1}  55  70  55  70}" >> /etc/i8kmon
echo "set config(3)   {{-1 2}  70  128  70  128}" >> /etc/i8kmon

echo "# For computer with 2 fans, use a variant of this instead:" >> /etc/i8kmon
echo "# Temperature thresholds: {fan_speeds low_ac high_ac low_batt high_batt}" >> /etc/i8kmon
echo "# set config(0)	{{-1 0}  -1  52  -1  65}" >> /etc/i8kmon
echo "# set config(1)	{{-1 1}  41  66  55  75}" >> /etc/i8kmon
echo "# set config(2)	{{-1 1}  55  80  65  85}" >> /etc/i8kmon
echo "# set config(3)	{{-1 2}  70 128  75 128}" >> /etc/i8kmon


echo "#Creating workspace"
su shoxx
cd
mkdir -p Pentest/
mkdir -p Cours/
mkdir -p Codes/Java
cd Codes/Java
wget https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/SR1a/eclipse-jee-luna-SR1a-linux-gtk-x86_64.tar.gz&mirror_id=514 -o eclipse.tar.gz
tar xvzf eclipse.tar.gz
rm eclipse.tar.gz

echo "#Todo:"
echo "Activer la sourie, installer vbox, editer le panel gnome, télécharger vmware" 
echo " Funky Gnome Extensions list :"
echo " Task Bar : https://extensions.gnome.org/extension/584/taskbar/ "
echo " Applications Menu : https://extensions.gnome.org/extension/6/applications-menu/"
echo " Sensors : https://extensions.gnome.org/extension/82/cpu-temperature-indicator/"
echo " Battery : https://extensions.gnome.org/extension/230/battery-remaining-time/"
echo " CPUMemInfo : https://extensions.gnome.org/extension/331/cpumeminfo/"
  
exit 
