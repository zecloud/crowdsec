choco install -y wixtoolset
choco install -y go-msi
$env:Path += ";C:\Program Files (x86)\WiX Toolset v3.11\bin"
#go get github.com/mh-cbon/go-msi
go-msi make --msi crowdsec.msi --version 0.0.1 -s .\windows\installer\ --arch amd64
go-msi choco --out choco --version 0.0.1 -s .\windows\choco\ -i crowdsec.msi 
