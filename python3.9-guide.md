### Guide to install Python 3.9

## 1. Install Python 3.9
### Check version
```sh
python3 -V
```
### Install development tool, Download Python3.9, extract and check before compiling
```sh
yum groupinstall 'development tools' -y && yum install wget openssl-devel bzip2-devel libffi-devel xz-devel -y
mkdir Python3.9
cd Python3.9
wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz
tar xzf Python-3.9.6.tgz
cd Python-3.9.6 && ./configure --enable-optimizations
```
### Install Python.
make altinstall

### Check the name of your new Python executable.
```sh
ls /usr/local/bin/python*
```
### Set the new Python executable as default. 

```sh
alternatives --install /usr/bin/pip pip /usr/local/bin/pip3.9 1 && alternatives --set pip /usr/local/bin/pip3.9
```
or Start by registering python2 as an alternative, set python3 as python, use config to select option
```sh
alternatives --install /usr/bin/python python /usr/bin/python2 50
alternatives --install /usr/bin/python python /usr/bin/python3 60
alternatives --config python
```

## 2. Update Pip
Update pip. Use the name of your new Python executable in the following command.
```sh
/usr/local/bin/python3.9 -m pip install --upgrade pip
```
Check for existing
```sh
ls /usr/local/bin/pip*
```
Set the new pip as the default. Use the name of your new pip executable in the following command.

```sh
alternatives --install /usr/bin/pip pip /usr/local/bin/pip3.9 1 && alternatives --set pip /usr/local/bin/pip3.9

```
Check the current version of Python and pip.

```sh
python -V && pip -V
```
You will see something like this:

Python 3.9.6
pip 21.2.3 from /usr/local/lib/python3.9/site-packages/pip (python 3.9)
