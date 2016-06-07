"C:\Program Files (x86)\Git\bin\git" add -A
@set /p COMMSG=commit message: 
"C:\Program Files (x86)\Git\bin\git" commit -m"%COMMSG%"
"C:\Program Files (x86)\Git\bin\git" push
@pause