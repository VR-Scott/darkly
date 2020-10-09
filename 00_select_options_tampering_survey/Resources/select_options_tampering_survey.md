# Where:
    /?page=survey
# How:

-Inspect 1 of the grade dropdown elements

-Change the value of 1 of the options to an invalid value.

Or

-Add an invalid option.

-Select the invalid value

-Receive the flag

# Flag:
    03A944B434D5BAFF05F46C4BEDE5792551A2595574BCAFC9A6E25F67C382CCAA

# Possible abuses:
User can add their own options or alter your options potentially getting items for free or rating something higher/lower than the correct limit.

# Fix:
Store options server side/on backend.All user input should be sanitised and validated (backend).