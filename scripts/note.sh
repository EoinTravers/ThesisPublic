for f in *.tex; do
    echo $f;
    sed -i "s/\\\textcolor{red}{\[\[/\\\aside{/" $f
    sed -i "s/\\\textcolor{red}{/\\\aside{/" $f
    sed -i "s/\]\]//" $f
    sed -i "s/||//" $f
done;
