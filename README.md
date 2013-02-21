Description
==============

I had the realization after reading several articles that many machines these days can have keyloggers on them for various reasons.

With that in mind, this is an experimental project in an attempt to easily make a vm that can be used for any of the below:

* Secure browsing using a pre-configured browser
* Mounting secure truecrypt drives
* Loading password management tools (such as keepass, lastpass or 1password) which might automatically enter private credentials
* Other tasks where keyloggers or a trusted clean system are desired.

Usage
=====

To start/configure a default Ubuntu 12.04 system:
<pre>
vagrant up
</pre>

To rebuild back to a trusted base image anytime type:
<pre>
vagrant destroy
vagrant up
</pre>

To change the default OS simply go to the following site to find a pre-packaged vagrant box: http://www.vagrantbox.es/ then change the URL specified in the Vagrantfile. Any changes to the OS may also require changes to the provision script as well.

Dependencies
============

* Vagrant (v1.0.5 or higher)
* VirtualBox (v4.2.6 or higher)

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