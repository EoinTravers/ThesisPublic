#!/bin/bash

echo 'Show files used...'
options=("...by chapter" "...in main document")
select opt in "${options[@]}"
do
    case $opt in
        "...by chapter")
            for d in *.*/
            do
                echo "Chapter: $d"
                echo "----------------"
                grep "^\\\input" "$d/Chapter.tex" | sed 's/\\\input{//' | sed 's/}/.tex/' | py -x "'$d%s' % x"
                grep  "\\\input" "$d/Chapter.tex" | grep "Appendices" | sed 's/\\\input{//' | sed 's/}/.tex/' | py -x "x.replace('./../', '')"
                echo ""
            done
            break
            ;;
        "...in main document")
            grep "^\\\input" "Thesis.tex" | sed 's/\\\input{//' | sed 's/}/.tex/' 
            grep  "\\\input" "Thesis.tex" | grep "Appendices" | sed 's/\\\input{//' | sed 's/}/.tex/'
            break
            ;;
        *) echo invalid option;;
    esac
done



