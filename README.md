# What is this?

Packages that can be installed with [chocolatey](http://chocolatey.org)

# How do I use it?

First, install chocolatey if you haven't already. From a powershell command prompt:
<pre>
&gt; Set-ExecutionPolicy Unrestricted
&gt; iex ((new-object net.webclient).DownloadString("http://bit.ly/psChocInstall"))
</pre>

Afterwards you may want to set your execution policy back to something more secure:
<pre>
&gt; Set-ExecutionPolicy RemoteSigned
</pre>

Next, install a package:
<pre>
&gt; cinst vagrant
</pre>

JRuby and putty will be on your path when the installation finishes. VirtualBox and the vagrant gem
will also be installed. [Set up a vagrant box](http://vagrantup.com/docs/getting-started/index.html),
install the [vagrant putty plugin](https://github.com/mdellanoce/vagrant-putty), and then run:
<pre>
vagrant putty
</pre>

This will SSH you into your VM with putty.