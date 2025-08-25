@echo off
set "TITLE=あなたのパソコンはウイルスに感染しました！！"
set "MSG=復元しますか？"

powershell -NoProfile -WindowStyle Hidden -Command ^
  "[System.Media.SystemSounds]::Exclamation.Play(); " ^
  "Add-Type -AssemblyName PresentationFramework; " ^
  "$res=[System.Windows.MessageBox]::Show('%MSG%','%TITLE%','YesNo','Warning'); " ^
  "if ($res -eq 'Yes') { Write-Host 'はいが選ばれました'; } else { Write-Host 'いいえが選ばれました'; }"
pause
