@echo off
set "TITLE=あなたのPCはウイルスに感染しました！"
set "MSG=復元を実行する"

mshta "javascript:var r=confirm('%MSG%'); if(r){alert('はいが選ばれました');} else {alert('いいえが選ばれました');}; close();"

echo ^G
pause
