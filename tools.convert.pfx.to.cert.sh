pfx=$1

if [ $pfx == "--help" ];
then
	echo "Usage: sh tools.convert.pfx.to.cert.sh [filename.pfx]"
	echo "Exports private key, certificate and pem file with both data."
else
	echo "Working with file:" $pfx

	# replace the pfx
	filename=${pfx/.pfx/""}

	# echo $filename

	# -------------------------------------------
	# Export the Private Key
	echo "Export the Private Key" 

	keyfile=$filename.key
	openssl pkcs12 -in $pfx -nocerts -out $keyfile -nodes

	echo "Generated file:" $keyfile

	# -------------------------------------------
	echo "Export the Certificate"

	crtfile=$filename.crt
	openssl pkcs12 -in $pfx -nokeys -out $crtfile -nodes

	echo "Generated file:" $crtfile

	# -------------------------------------------
	echo "Export the Pem File" 

	pemfile=$filename.pem
	openssl pkcs12 -in $pfx -out $pemfile -nodes

	echo "Generated file:" $pemfile
fi	

