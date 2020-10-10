# Where:
    /?page=upload
# How:

-By inspecting the upload form's upload button we see that the *name* and *value* are both *Upload*

-A little above this we see the input is name is *uploaded*

-When we upload an image we see that the url is now:

    http://192.168.56.101/index.php?page=upload#

-We use the info gathered above to make a script to upload a php file as a jpg.

    #!/bin/sh

    ip="192.168.56.101" && [[ "$1" ]]  && ip="$1"

    curl --silent -X POST -F 'Upload=Upload' -F 'uploaded=@empty.php;type=image/jpeg' "${ip}/?page=upload#" | grep "flag"

- *curl* is a tool to transfer data from or to a server, using one of the supported protocols (HTTP, HTTPS, FTP, FTPS, GOPHER, DICT, TELNET, LDAP or FILE).

- *--silent* stops the *workings* outputs so as to only give the final output.

- *-X Post* tells curl we want to make a POST request.

- *-F 'Upload=Upload'* tells curl that we POSTing a submit named *Upload* with the value of *Upload*.

- The submit and image input are 2 fields hence we need the 2 *-F*s

- To force the 'content' part to be a file, prefix the file name with an @ sign

- You can also tell curl what Content-Type to use by using 'type=', in a manner similar to:

    curl -F "web=@index.html;type=text/html" example.com

- We *grep* the HTML to only get the line with the *flag*.

# Flag:
    46910d9ce35b385885a9f7e2b336249d622f29b267a1771fbacf52133beddba8

# Possible abuses:

Could upload malicious code disguised as an image.

# Fix:

Validate files uploaded by the user.<br>
For images this can be done by attempting to create an image object.<br>
image.onload