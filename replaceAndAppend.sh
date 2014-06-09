#!/bin/bash

# 引数をチェック
if [ $# -ne 3 ]; then
	echo "変換する単語、置換対象と読込対象のファイルを指定してください。"
	echo "Usage: $CMDNAME keyword file1 file2" 1>&2
	exit 1
fi

# 変換する単語が置換対象のファイルに1カ所であることをチェック
. ./checkWordsCount.sh "$1" $3

# 置換対象と読込対象のファイル存在チェック
if [ ! -e $3 ]; then
	echo "置換対象のファイルが存在しません。$3" 1>&2
	exit 1
fi
if [ ! -e $2 ]; then
	echo "読込対象ファイルが存在しません。$2" 1>&2
	exit 1
fi

# コマンド宣言 -- 変数名の最初には$いらない。
cmdReplacePrint="/bin/sed -i -n '/$1/!p;/$1/r $2' $3" 1>&2

# コマンド実行
eval ${cmdReplacePrint}
