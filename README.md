Introduce : TiSplit  A tool for splitting hundreds of GB CSV files into small files. If there are any bugs, please provide feedback in a timely manner, and the author will fix them in a timely manner! "

   
[tidb@host1 ~]$ ./tisplit.sh -i data.csv -o /home/tidb/csvpoc -m ceshi.tab -l 10

option i ==> data.csv

option o ==> /home/tidb/csvpoc

option m ==> ceshi.tab

option l ==> 10


[tidb@host1 ~]$ cd /home/tidb/csvpoc

[tidb@host1 csvpoc]$ ls

ceshi.tab.00000000.csv  ceshi.tab.00000007.csv  ceshi.tab.00000014.csv  ceshi.tab.00000021.csv  ceshi.tab.00000028.csv  ceshi.tab.00000035.csv  
ceshi.tab.00000001.csv  ceshi.tab.00000008.csv  ceshi.tab.00000015.csv  ceshi.tab.00000022.csv  ceshi.tab.00000029.csv  ceshi.tab.00000036.csv
ceshi.tab.00000002.csv  ceshi.tab.00000009.csv  ceshi.tab.00000016.csv  ceshi.tab.00000023.csv  ceshi.tab.00000030.csv  ceshi.tab.00000037.csv
ceshi.tab.00000003.csv  ceshi.tab.00000010.csv  ceshi.tab.00000017.csv  ceshi.tab.00000024.csv  ceshi.tab.00000031.csv  ceshi.tab.00000038.csv
ceshi.tab.00000004.csv  ceshi.tab.00000011.csv  ceshi.tab.00000018.csv  ceshi.tab.00000025.csv  ceshi.tab.00000032.csv  ceshi.tab.00000039.csv
ceshi.tab.00000005.csv  ceshi.tab.00000012.csv  ceshi.tab.00000019.csv  ceshi.tab.00000026.csv  ceshi.tab.00000033.csv  ceshi.tab.00000040.csv
ceshi.tab.00000006.csv  ceshi.tab.00000013.csv  ceshi.tab.00000020.csv  ceshi.tab.00000027.csv  ceshi.tab.00000034.csv  ceshi.tab.00000041.csv
[tidb@1 csvpoc]$

