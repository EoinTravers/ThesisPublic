# Build the Chapter.
xelatex Chapter
bibtex Chapter
xelatex Chapter
xelatex Chapter

# Clean up
rm Chapter.log  Chapter.toc Chapter.out Chapter.lof Chapter.aux Chapter.blg

