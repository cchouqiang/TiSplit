function TiSplit_help(){
   echo "Auther    : cchouqiang"
   echo "Introduce : TiSplit  A tool for splitting hundreds of GB CSV files into small files. If there are any bugs, please provide feedback in a timely manner, and the author will fix them in a timely manner! "
   echo " "
   echo "Usage: tisplit.sh [option] [parameter]"
   echo "option: -i --input-file          [input_csv_path]          |               | CSV file to be processed;"
   echo "        -o --operate-path        [operate_dir_path]        |               | Need to process the path of the CSV file"
   echo "        -m --schema-meta         [schema_meta]             |               | eg: -m schema_name.table_name;"
   echo "        -l --lines_per_file      [lines_per_file]          |(default: '')  | split lines"
   echo "        -h --help                                          |               | help"
}


# Deal with content of input
if [ $# -le 0 ] || [ $1 = '?' ]; then
   TiSplit_help
   exit 1
fi

# Set TiSplit options using getopt lib
TEMP=`getopt -o i:o:m:l:h --long help,input-file:,operate-path:,schema-meta:,lines_per_file: -- "$@"`

# Note the quotes around `$TEMP': they are essential!
eval set -- "$TEMP"



while true ; do
        case "$1" in
                -i|--input-file)          echo "Option i == ${2}" ; 
                        Source_oper_file=${2}; shift 2;;
                -o|--operate-path)        echo "Option o == ${2}" ;
                        TiSplit_check_dir=${2}
                        TiSplit_oper_file=${2}/TiSplit_operating_csv_$perfix_hash_time;
                        TiSplit_oper_dir=${2}/${perfix_hash_time}_operating_dir; shift 2;;
                -m|--schema-meta)         echo "Option m == ${2}" ;
                        TiSplit_meta_table=${2}; shift 2;;
                -l|--lines_per_file)      echo "Option l == ${2}" ;
                        TiSplit_lines_per_file=${2}; shift 2;;
                -h|--help) TiSplit_help; exit 1 ;;
                --) shift ; break ;;
                *) echo "Internal error!" ; exit 1 ;;
        esac
done

# Print information on terminal
echo "---------------------------------------------------------------------------"
echo "------------  TiSplit starting  ------------------------------------------"
echo "---------------------------------------------------------------------------"

# Split the file into many small files, which 

cd ${TiSplit_check_dir}

split -l ${TiSplit_lines_per_file} ${Source_oper_file}  -d -a 8 ${TiSplit_meta_table}.


# Change every files to obey the filename named rule of tidb-lightning
softfiles=$(ls ${TiSplit_check_dir}/${TiSplit_meta_table}*)
for sfile in ${softfiles}
do
   mv ${sfile} ${sfile}.csv
done

echo "---------------------------------------------------------------------------"
echo "------------  TiSplit completed !!!         ------------------------------"
echo "---------------------------------------------------------------------------"
