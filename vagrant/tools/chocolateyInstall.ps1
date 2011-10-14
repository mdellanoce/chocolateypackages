try {

	#Install vagrant and related windows dependencies
	jgem install jruby-openssl jruby-win32ole vagrant
	
	#Set putty registry keys to work with vagrant
	$path = "HKCU:\Software","\SimonTatham","\PuTTY","\Sessions","\vagrant"
	$publicKeyFile = "C:\jruby-1.6.4\lib\ruby\gems\1.8\gems\vagrant-0.8.7\keys\vagrant.ppk"
	$vagrantKey = ""

	foreach ($key in $path)
	{
		$vagrantKey += $key
		if (-not (Test-Path $vagrantKey))
		{
			New-Item -type Directory $vagrantKey
		}
	}

	New-ItemProperty $vagrantKey -propertyType String -name "HostName" -value "vagrant@localhost" -force
	New-ItemProperty $vagrantKey -propertyType dword "PortNumber" -value "2222" -force
	New-ItemProperty $vagrantKey -propertyType String "Protocol" -value "ssh" -force
	New-ItemProperty $vagrantKey -propertyType String "Protocol" -value "$publicKeyFile" -force
	
  Write-ChocolateySuccess '__NAME__'
} catch {
  Write-ChocolateyFailure '__NAME__' $($_.Exception.Message)
  throw 
}