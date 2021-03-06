#!/bin/sh

# 引数確認＆エラー処理設定
set -eu
if [ $# -ne 1 ]; then
	echo "Usage: $0 [target]"
fi

# インストール先ディレクトリ作成等
install_dir=~/myapp
if [ ! -e ${install_dir} ] ; then
  mkdir ${install_dir}
  echo "setenv PATH $PATH:${install_dir}/usr/bin:${install_dir}/usr/local/bin" >> ~/.tcshrc
  mkdir -p ${install_dir}/usr/bin
  cp -a ./myyum.sh ${install_dir}/usr/bin/myyum
fi

# 一時ディレクトリ作成
cd $(mktemp -d)

# yumにてrpmを取得
yumdownloader --resolve $1

# rpmの中身を取得
for filepath in *.rpm
do
    rpm2cpio ${filepath} | cpio -ivd
done

# インストール先にコピー
for directory in $(ls -1 | grep -v .rpm)
do
    cp -avr ${directory} ${install_dir}
done
cd ../
# 一時ディレクトリを削除
rm -Rf $(ls -l | grep $(whoami) | grep tmp | awk '{print $NF}')
