thesis_files="1.Conflict/Intro.tex \
              1.Conflict/DualProcess.tex \
              1.Conflict/Representations.tex \
              1.Conflict/Recap.tex \
              2.Methods/Measurement.tex \
              2.Methods/MouseTracking.tex \
              2.Methods/Statistics.tex \
              3.Similarity/Intro.tex \
              3.Similarity/Method1.tex \
              3.Similarity/Results1.tex \
              3.Similarity/Discussion1.tex \
              3.Similarity/Method2.tex \
              3.Similarity/Results2.tex \
              3.Similarity/Discussion2.tex \
              3.Similarity/GeneralDiscussion.tex \
              4.Associations/Intro.tex \
              4.Associations/Method1.tex \
              4.Associations/Results1.tex \
              4.Associations/Discussion1.tex \
              4.Associations/Method2.tex \
              4.Associations/Results2.tex \
              4.Associations/Discussion2.tex \
              4.Associations/Conclusions.tex \
              5.Baserate/Intro.tex \
              5.Baserate/Method.tex \
              5.Baserate/Results1.tex \
              5.Baserate/Results2.tex \
              5.Baserate/Results3.tex \
              5.Baserate/Discussion.tex \
              6.CRT/Intro.tex \
              6.CRT/Method.tex \
              6.CRT/Results1.tex \
              6.CRT/Results2.tex \
              6.CRT/Discussion.tex"

for f in $thesis_files;
do
    echo $f
    echo '-------'
    echo $(grep -Pazo "(?s)\aside\{.*?\}" $f)
    echo ''
    echo ''
done
