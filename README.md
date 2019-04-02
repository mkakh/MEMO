# MEMO
uplatexとmupdfを想定して作っているので，環境依存しています．

## Usage
1. install.shを実行し，必要なテンプレートファイルを/usr/share/memoにコピーします．
2. memo.shを適当な場所に移動し，PATHを通します．
3. `memo.sh file_name`を実行します．自動的に~/.memo内にfile_name.texが生成され，vimと自動コンパイルソフト(latexmk)が立ち上がります．
