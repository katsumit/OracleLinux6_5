#!/bin/bash
# 変換する単語が置換対象のファイルに1カ所であることをチェック
cmdErrChkCountKeyWords="grep -c '$1' $2" 1>&2
numKeywordscount=`eval ${cmdErrChkCountKeyWords} | sed -e "s/.*\:\([^:]*\)\$/\1/g"`
if [ $numKeywordscount -ne 1 ]; then
	echo "変換する単語が適切ではありません。単語:$1 件数:$numKeywordscount" 1>&2
	if [ $numKeywordscount -eq 0 ]; then
		echo "置換対象のファイルに存在しません"
	else
		echo "置換対象のファイルに複数存在します。"
	fi 
	return 1
fi
return 0
