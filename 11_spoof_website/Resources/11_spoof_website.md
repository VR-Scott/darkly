# Where:
    /?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c
# How:

-Click the copyright redirect at the bottom of the page. This takes you to /?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c.

-Inspect the page and read through/search the source code until you find 'You must cumming from : "https://www.nsa.gov/" to go to the next step'.

-Create cURL script that uses --referer (nsa.gov) and agent (ft_bornToSec) to return html. *spoof_site_nsa.sh*

- *curl* is a tool to transfer data from or to a server, using one of the supported protocols (HTTP, HTTPS, FTP, FTPS, GOPHER, DICT, TELNET, LDAP or FILE).

- *--silent* stops the *workings* outputs so as to only give the final output.

- *-X Post* tells curl we want to make a POST request.

- *ip* is the ip address passed as an ARG.

- We POST *admin* as username and each *i* in the list of passwords as the password.

- We *grep* the HTML each time to only get the line with the *flag*.

# Flag:
    f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188

# Possible abuses:

<!-- XSS? -->

# Fix:

Protect again cURL spoofing using HTML headers. ?