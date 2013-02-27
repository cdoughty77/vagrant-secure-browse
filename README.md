Description
==============

After reading several articles about [keyloggers](http://en.wikipedia.org/wiki/Keystroke_logging), this experimental project was born in an attempt to easily make a vm that can be used for any of the below:

* [Secure browsing](http://support.google.com/chrome/bin/answer.py?hl=en&answer=95464) using a pre-configured browser
* Mounting secure [truecrypt](http://www.truecrypt.org/) drives
* Loading password management tools (such as [keepass](http://www.keepassx.org/), [lastpass](http://lastpass.com/) or [1password](https://agilebits.com/onepassword)) to automatically enter private credentials
* Other tasks where keyloggers or a trusted clean system are desired.

Tips
====

* **Disable clipboard sharing** - If using a password management tool(such as keepass), [disable clipboard sharing in virtualbox](http://www.virtuatopia.com/index.php/Configuring_VirtualBox_Virtual_Machine_Settings#Advanced_Settings) to protect any passwords autotyped by the tool from any keylogger watching the clipboard on the host OS.
* **Use onscreen keyboard for passwords** - Use a virtual onscreen keyboard (such as [onboard in Ubuntu](http://www.iloveubuntu.net/ubuntus-default-virtual-keyboard-onboard-097-released-new-themes-behavior-enhancements-and-numerous)) to type any passwords into the vm, so that the any keylogger on the host OS will only detect mouse clicks instead of the password being entered.

Usage
=====

To start/configure a default Ubuntu 12.04 system(first boot takes a bit longer as it pulls down the ~250 MB OS image):
<pre>
vagrant up
</pre>

To rebuild back to a trusted base image anytime type(should go faster as os image will already be present):
<pre>
vagrant destroy
vagrant up
</pre>

To change the default OS simply go to the following site to find a pre-packaged vagrant box: http://www.vagrantbox.es/ then change the URL specified in the Vagrantfile. Any changes to the OS may also require changes to the provision script as well.

Dependencies
============

* [Vagrant](http://www.vagrantup.com/) (v1.0.5 or higher)
* [VirtualBox](https://www.virtualbox.org/) (v4.2.6 or higher)

Disclaimer
==========

This is provided as-is.  

I've used the following posting to auto-add chrome extensions(see provision script for which extensions):
http://serverfault.com/questions/354606/where-do-i-find-the-update-url-for-google-chrome-extensions

Should you want to modify, please feel free to fork and send a pull request.

License
=======

MIT / Copyright (C) 2013 Chris Doughty cdoughty77@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
