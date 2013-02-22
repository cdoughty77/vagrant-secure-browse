# Install xfce desktop, keepassx, and expect
aptitude install -y --without-recommends xubuntu-desktop keepassx expect

# Get latest patches and fixes
apt-get -f -y update

# Install chrome browser
wget -N https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i ./google-chrome-stable_current_amd64.deb
apt-get -f -y install

# Make not storing local data default
alias google-chrome="google-chrome --incognito"

# Add some default extensions
mkdir /opt/google/chrome/extensions > /dev/null 2>&1

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

# Get truecrypt and install
wget -N http://www.truecrypt.org/download/truecrypt-7.1a-linux-x64.tar.gz

# Untar the package
tar -xvf truecrypt-7.1a-linux-x64.tar.gz

# Now install it using expect
VAR=$(expect -c '
set force_conservative 0  ;
if {$force_conservative} {
        set send_slow {1 .1}
        proc send {ignore arg} {
                sleep .1
                exp_send -s -- $arg
        }
}
set timeout -1
spawn ./truecrypt-7.1a-setup-x64
match_max 100000
expect -exact "To select, enter 1 or 2: "
send -- "1\r"
expect -exact "Press Enter to display the license terms... "
send -- "\r"
send -- "q"
expect -exact "Do you accept and agree to be bound by the license terms? (yes/no): "
send -- "yes\r"
send -- "\r"
expect eof
')
