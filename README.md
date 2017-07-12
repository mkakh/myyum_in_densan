# myyum_in_densan

電算にてroot権限なしでyum installみたいなことをすることができます。

※ライブラリを使用したり実行に権限が必要なものなど対応してないものも多いです。

##Usage:

### 初回
1. `git clone https://github.com/mkakh/myyum_in_densan && cd myyum_in_densan`
2. `yum search hogehoge`のようにしてパッケージ名を検索
3. `./myyum.sh hogehoge-package`のようにパッケージ名を引数に書いて実行（※引数は１つまでしか対応してません）
4. `source ~/.tcshrc`を実行するかターミナルを開き直す

### 二回目以降
初回と違い`myyum`と打てばどこでもスクリプトが実行できるようにしてあります。

`source ~/.tcshrc`は毎回実行してください。
