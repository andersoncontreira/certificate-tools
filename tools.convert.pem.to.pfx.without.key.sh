pem=$1

if [ $pem == "--help" ];
then
	echo "Usage: sh tools.convert.pem.to.pfx.without.key.sh [filename.pem]"
	echo "Generates a pfx file to be imported into the browser from a pem certificate."
else
	echo "Working with file:" $pem

	# replace the pem
	filename=${pem/.pem/""}

	#echo $filename
	# -------------------------------------------
	echo "Generating pfx file" 

	pemfile=$filename.pem
	pfxfile=$filename.pfx

	openssl pkcs12 -nokeys -in $pemfile -export -out $pfxfile

	echo "Generated file:" $pfxfile

fi	
