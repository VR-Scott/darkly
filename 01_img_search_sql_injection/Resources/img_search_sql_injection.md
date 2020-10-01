# Where: <br>
    /?page=searchimg
# How:
    -By entering
    <br>
    -1 union _select_ null, concat (table_name) from information_schema.tables where table_schema = database ()
    <br>
    -Change the value of 1 of the options to an invalid value.
    <br>
    Or
    <br>
    -Add an invalid option.

    -Select the invalid value

    -Receive the flag

# Flag:
    03A944B434D5BAFF05F46C4BEDE5792551A2595574BCAFC9A6E25F67C382CCAA
# Fix:
    Store options server side/on backend.All user input should be sanitised and validated (backend).