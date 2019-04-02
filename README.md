# MEMO
`alacritty`と`uplatex`，`mupdf`を想定して作っているので，環境依存しています．

## Usage
1. `install.sh`を実行し，必要なテンプレートファイルを`/usr/share/memo`にコピーします．
2. `memo.sh`を適当な場所に移動し，PATHを通します．
3. `memo.sh file_name`を実行します．自動的に`~/.memo`内に`file_name.tex`が生成され，`vim`と自動コンパイルソフト `latexmk`が立ち上がります．
