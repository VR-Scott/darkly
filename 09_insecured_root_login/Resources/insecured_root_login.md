# Where:
    /whatever
# How:

-If we look at the *robots.txt* we see that there are 2 directories in the root directory of the page.

    /whatever
    /.hidden

-By looking in */whatever* we find a file called:

    htpasswd

-By downloading this file and opening it we see:

    root:8621ffdbc5698829397d97767ac13db3

-We take *8621ffdbc5698829397d97767ac13db3* and decrypt it at [MD5 Online](https://www.md5online.org/md5-decrypt.html) to get:

    dragon

-We then go to:

    /admin

-Then login with:

    Username: root
    Password: dragon

# Flag:
    d19b4823e0d5600ceed56d5e896ef328d7a2b9e7ac7e80f4fcdb9b10bcb3e7ff

# Possible abuses:

Malicious users can access important info like passwords making it insecure.

# Fix:

Implement a router that checks routes and then handles them accordingly
Block direct access to directories or files using a .htaccess or similar file