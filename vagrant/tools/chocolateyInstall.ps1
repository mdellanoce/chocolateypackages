#try {
	#Install vagrant and related windows dependencies
#	jgem install jruby-openssl jruby-win32ole vagrant
    Install-ChocolateyPackage 'Vagrant' 'MSI' '-q' 'http://files.vagrantup.com/packages/be0bc66efc0c5919e92d8b79e973d9911f2a511f/vagrant_1.0.5.msi'
	
#    Write-ChocolateySuccess 'Vagrant'
#} catch {
#    Write-ChocolateyFailure 'Vagrant' $($_.Exception.Message)
#    throw 
#}