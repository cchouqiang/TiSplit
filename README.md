function TiSplit_help(){
   echo "Auther    : cchouqiang"
   echo "Introduce : TiSplit_for_lightning 是一个能让你快速将几百GB的csv文件切分成小文件的工具，如有任何 BUG 请及时反馈，作者将及时修复！"
   echo " "
   echo "Usage: ${0##*/} [option] [parameter]"
   echo "option: -i --input-file          [input_csv_path]          |               | 需要处理的csv文件路径;"
   echo "        -o --operate-path        [operate_dir_path]        |               | 需要处理csv文件的，空间足够的文件夹路径;"
   echo "        -m --schema-meta         [schema_meta]             |               | 需要指定库中 csv 文件所属对象信息，eg: -m schema_name.table_name;"
   echo "        -l --lines_per_file      [lines_per_file]          |(default: '')  | 指定拆分后的csv文件的行数"
   echo "        -h --help                                          |               | 获取关于 TiSplit.sh 的操作指引"
}
[tidb@host1 ~]$  ./tisplit.sh -i data.csv -o /home/tidb/csvpoc -m ceshi.tab -l 10
Option i == data.csv
Option o == /home/tidb/csvpoc
Option m == ceshi.tab
Option l == 10
---------------------------------------------------------------------------
------------  TiSplit starting  ------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
------------  TiSplit completed !!!         ------------------------------
---------------------------------------------------------------------------
[tidb@host1 ~]$ cd /home/tidb/csvpoc
[tidb@host1 csvpoc]$ ls
ceshi.tab.00000000.csv  ceshi.tab.00000007.csv  ceshi.tab.00000014.csv  ceshi.tab.00000021.csv  ceshi.tab.00000028.csv  ceshi.tab.00000035.csv  data.csv
ceshi.tab.00000001.csv  ceshi.tab.00000008.csv  ceshi.tab.00000015.csv  ceshi.tab.00000022.csv  ceshi.tab.00000029.csv  ceshi.tab.00000036.csv
ceshi.tab.00000002.csv  ceshi.tab.00000009.csv  ceshi.tab.00000016.csv  ceshi.tab.00000023.csv  ceshi.tab.00000030.csv  ceshi.tab.00000037.csv
ceshi.tab.00000003.csv  ceshi.tab.00000010.csv  ceshi.tab.00000017.csv  ceshi.tab.00000024.csv  ceshi.tab.00000031.csv  ceshi.tab.00000038.csv
ceshi.tab.00000004.csv  ceshi.tab.00000011.csv  ceshi.tab.00000018.csv  ceshi.tab.00000025.csv  ceshi.tab.00000032.csv  ceshi.tab.00000039.csv
ceshi.tab.00000005.csv  ceshi.tab.00000012.csv  ceshi.tab.00000019.csv  ceshi.tab.00000026.csv  ceshi.tab.00000033.csv  ceshi.tab.00000040.csv
ceshi.tab.00000006.csv  ceshi.tab.00000013.csv  ceshi.tab.00000020.csv  ceshi.tab.00000027.csv  ceshi.tab.00000034.csv  ceshi.tab.00000041.csv
[tidb@1 csvpoc]$
