# Where:
    /
# How:

-Inspect any element.

-Click on the Application tab.
    
-On the left side under the *storage* heading click on the *Cookies* dropdown.

-Click on the url.

-We find the *I_am_admin* cookie and decrypt it's value at [MD5 Online](https://www.md5online.org/md5-decrypt.html) to get:

    false
    
-We then hash *true* using MD5 at [MD5 Online](https://www.md5online.org) to get:

    b326b5062b2f0e69046810717534cb09

-We add this hash value into the cookie and refresh the flag appears in the form of an alert.

# Flag:
df2eb4ba34ed059a1e3e89ff4dfc13445f104a1a52295214def1c4fb1693a5c3

# Possible abuses:
As seen here malicious users can change the value of the cookies giving them selves Admin privilege etc. 

# Fix:
Set sensitive values in [session variables](https://www.w3schools.com/php/php_sessions.asp) rather than cookies.
I do also believe sha256 is a better hash to use especialy when combined with a salt.