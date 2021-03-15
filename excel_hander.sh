# excel_hander.sh



folder="/mnt/soft"
 
softfiles=$(ls $folder)

for sfile in ${softfiles}
  do 
    echo "soft: ${sfile}"
  done