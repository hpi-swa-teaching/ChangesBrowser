if exist %windir%\SysWOW64\ ("C:\Program Files\Git\bin\git" fetch
"C:\Program Files\Git\bin\git" merge --ff-only origin/team09) else ("C:\Program Files (x86)\Git\bin\git" fetch
"C:\Program Files (x86)\Git\bin\git" merge --ff-only origin/team09)
@pause