# Install xfce desktop, keepassx
aptitude install -y --without-recommends xubuntu-desktop keepassx

# Get latest patches and fixes
apt-get -f -y update

# Install chrome browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i ./google-chrome-stable_current_amd64.deb
apt-get -f -y install

# Make not storing local data default
alias google-chrome="google-chrome --incognito"

# Add some default extensions
mkdir /opt/google/chrome/extensions

# Add WOT extension: https://chrome.google.com/webstore/detail/wot/bhmmomiinigofkjcapegjjndpbikblnp?hl=en
cat > /opt/google/chrome/extensions/bhmmomiinigofkjcapegjjndpbikblnp.json << EOF
{
   "external_update_url": "http://clients2.google.com/service/update2/crx?response=updatecheck&x=id%3Dbhmmomiinigofkjcapegjjndpbikblnp%26uc" 
}
EOF

# Add Adblock plus extension: https://chrome.google.com/webstore/detail/adblock-plus/cfhdojbkjhnklbpkdaibdccddilifddb?hl=en
cat > /opt/google/chrome/extensions/cfhdojbkjhnklbpkdaibdccddilifddb.json << EOF
{
   "external_update_url": "http://clients2.google.com/service/update2/crx?response=updatecheck&x=id%3Dcfhdojbkjhnklbpkdaibdccddilifddb%26uc" 
}
EOF

# Add https-everywhere extension: https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp?hl=en
cat > /opt/google/chrome/extensions/gcbommkclmclpchllfjekcdonpmejbdp.json << EOF
{
   "external_update_url": "https://www.eff.org/files/https-everywhere-chrome-updates.xml" 
}
EOF

# Now give appropriate rights to files/dir
chmod -R 777 /opt/google/chrome/extensions

# Reboot system
reboot
