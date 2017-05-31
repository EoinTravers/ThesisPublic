
# for d in *.*/
# do
#     cp 1.Conflict/files_used.sh $d
# done

## files_used.sh
# grep "^\\\input" Chapter.tex | sed 's/\\\input{//' | sed 's/}/.tex/'

for f in $(sh ./files_used.sh)
do
    aspell check $f
done
