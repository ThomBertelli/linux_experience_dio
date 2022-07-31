Numeric permition codes:

Permition| Code
:-------:|:----:
Read (R) | 4
Write (W)| 2
Exec (X) | 1
None     | 0 

Changing permitions:

`chmod <numeric code> <directory/file name>`
example:
`chmod 750 /scripts/`

The first number in the numerical code is the **sum of the permissions** that the owner of the file will have. 

 4 + 2 + 1 = 7 => total control.

 The second is the owner's group permitions (4 + 1 = 5 = read/exec) and the third is the other users permitions (0 = no permition).

