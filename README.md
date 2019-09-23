# Certificate Tools - Shell
Scripts to help to work with certifcates

## File Definition
 Below are some details to note:
  
* Each file with a specific extension has a purpose;
* `Crt` file - File containing the certificate;
* File `key` - Key related to that certificate;
* Pem file - File containing key + certificate;
* Pfx file - this is usually the file that contains a certificate,
This is generated for example by exporting via browser.
    - Usually through the tools it is possible to extract the other files from a `pfx`;
    - This file usually has a password attached to it when it is exported from the browser,
    the user needs to set the password, by default when it comes to the testing environment we set the password 123456;
     
## Tools
 To help with the certificate handling process we have some tools;
 
### Convert pem to pfx file
 Use script: `tools.convert.pem.to.pfx.sh`:
 
    sh tools.convert.pem.to.pfx.sh [filename] .pem

> Note: Will generate a file: [filename] .pfx

 
### Convert pem file to pfx without key
 Use script: `tools.convert.pem.to.pfx.without.key.sh`:

    sh tools.convert.pem.to.pfx.without.sh [filename] .pem
    
> Note: Will generate a file: [filename] .pfx
  
### Convert pem file to (crt, key, and pem)
 Use script: `tools.convert.pfx.to.cert.sh`:
 
    sh tools.convert.pfx.to.cert.sh [filename] .pfx
 
> Note: It will generate three files: [filename] .crt, [filename] .key and [filename] .pem


