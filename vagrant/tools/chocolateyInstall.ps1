try {

	#Install vagrant and related windows dependencies
	jgem install jruby-openssl jruby-win32ole vagrant
	
  Write-ChocolateySuccess '__NAME__'
} catch {
  Write-ChocolateyFailure '__NAME__' $($_.Exception.Message)
  throw 
}