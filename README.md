Vagrant secure browse
==============

An attempt to easily make a vm that can be used for any of the below:

* Secure browsing using a pre-configured browser
* Mounting secure truecrypt drives
* Loading KeePass databases(or other password management tools)
* Other tasks where keyloggers or a trusted clean system are desired.

Usage
=====

To get started, simply edit the Vagrant file and/or provision script if desired and type:
<pre>
vagrant up
</pre>

To rebuild back to a trusted base image anytime type:
<pre>
vagrant destroy
vagrant up
</pre>

Dependencies
============

* Vagrant (v1.0.5 or higher)
* VirtualBox (v4.2.6 or higher)
* Uses Ubuntu 12.04 image unless Vagrantfile is modified(See pre-packaged boxes:  http://www.vagrantbox.es/)

Disclaimer
==========

This is provided as-is.  

I've used this posting to auto-add chrome extensions:
http://serverfault.com/questions/354606/where-do-i-find-the-update-url-for-google-chrome-extensions

Should you want to modify, please feel free to fork and send a pull request.

License
=======

MIT / Copyright (C) 2013 Chris Doughty cdoughty77@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
