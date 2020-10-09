# Where:
    /
# How:

-Inspect the submit button.

-There is a input of type hidden and value of:

    webmaster@borntosec.com

-This tells us where the email is sent to.

-Changing the value and then submitting gives us the flag:

# Flag:
    1D4855F7337C0C14B6F44946872C4EB33853F40B2D54393FBE94F49F1E19BBB0

# Possible abuses:
We can now reset any password by sending email to this.
Can use man in middle attack to redirect email to a our email instead.

# Fix:
Store the email address and send the email from the back-end. 