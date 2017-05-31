for d in 1.Conflict/ 2.Methods/ 3.Similarity/ 4.Associations/ 5.Baserate/ 6.CRT/ 7.Conclusions/
do
    echo $d
    cd $d
    # perl -0777 -pi -e 's/\\begin{appendices}.+?\\end{appendices}/%/sg' Chapter.tex
    ./do.sh
    cd ..
done

# Don't do appendies
# Don't do references
# for d in 1.Conflict/ 2.Methods/ 3.Similarity/ 4.Associations/ 5.Baserate/ 6.CRT/ 7.Conclusions/
# do
#     echo $d
#     cd $d
#     perl -0777 -pi -e 's/\\begin{appendices}.+?\\end{appendices}/%/sg' Chapter.tex
#     # perl -pi -e 's/\\bibliography/\\nobibliography/g' Chapter.tex # This doesn't work yet
#     cd ..
# done



for d in 1.Conflict/ 2.Methods/ 3.Similarity/ 4.Associations/ 5.Baserate/ 6.CRT/ 7.Conclusions/
do
    cp $d\Chapter.pdf "Chapters/Chapter$(echo $d | cut -c 1).pdf"
done
