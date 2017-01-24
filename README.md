# myyum_in_densan

電算にてroot権限なしでyum installすることができます。

Usage:

1. yum search hogehoge のようにしてパッケージ名を検索
2. ./myyum.sh hogehoge-package のようにパッケージ名を引数に書いて実行（※引数は１つまでしか対応してません）
3. source ~/.tcshrcを実行するかターミナルを開き直す
