find . -name "*.tex" | xargs grep -n -P "\\\\citep\\[[^\\]]+?\\]{"
