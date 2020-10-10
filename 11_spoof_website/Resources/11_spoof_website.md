# Where:
    /?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c
# How:

-Click the copyright redirect at the bottom of the page. This takes you to /?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c.

-Inspect the page and read through/search the source code until you find 'You must cumming from : "https://www.nsa.gov/" to go to the next step'.

-Create cURL script that uses --referer (nsa.gov) and agent (ft_bornToSec) to return html. *spoof_site_nsa.sh*

    #!/bin/sh

    ip="192.168.56.101" && [[ "$1" ]]  && ip="$1"

    curl --silent -A 'ft_bornToSec' --referer "https://www.nsa.gov/" "${ip}/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c" | grep "flag"

- *curl* is a tool to transfer data from or to a server, using one of the supported protocols (HTTP, HTTPS, FTP, FTPS, GOPHER, DICT, TELNET, LDAP or FILE).

- *--silent* stops the *workings* outputs so as to only give the final output.

-We change the header info.

- *-A 'ft_bornToSec'* tells curl that the *Agent(browser)* is *ft_bornToSec*

- *--referer "https://www.nsa.gov/"* tells curl that we came from *https://www.nsa.gov/*

- We *grep* the HTML each time to only get the line with the *flag*.

# Flag:
    f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188

# Possible abuses:

Could possibly get special access due to coming from a specific site.
May be used for XSS?

# Fix:

Don't trust referer find more secure way to validate referals.
Use a unique/token to prove they came from the legitimate referer.