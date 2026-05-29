@echo off
set OUTPUT=OnlyNames.txt

REM 使用 /s 递归，但只输出文件名（因为 dir 在递归时如果不加 /b 会显示路径，这里用 for 提取单纯文件名）
for /r %%i in (*) do (
    echo %%~nxi >> %OUTPUT%
)

echo 已完成！仅文件名列表已生成：%OUTPUT%
start "" %OUTPUT%
pause