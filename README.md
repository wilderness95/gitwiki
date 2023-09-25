# Markdown Wiki for SOT

WIKI for SOT written in markdown hosted on the IBM GitHub and Sot Cube in Infopark D. This repository tracks the information for hosting the WIKI itself.

Warning: DO NOT publish here without first testing on your computer.

## Pre-requisite

- Python3
    - [Artifactory page](https://na.artifactory.swg-devops.com/artifactory/webapp/#/artifacts/browse/tree/General/g2o-asset-repo/Python%20-%20IUA)
    - Don't forget to check "Add to PATH" checkbox while installing
- pip
    - comes with Python3 for windows
    - for Linux, install it from repository, or by https://bootstrap.pypa.io/get-pip.py
- Git
    - https://na.artifactory.swg-devops.com/artifactory/webapp/#/artifacts/browse/simple/General/g2o-asset-repo/Git%20-%20LIUA/2.20/Git-2.20.1-winX64.exe
    - When prompted, choose Plink instead of OpenSSH, and browse the path. Plink is located in C:/Program Files(x86)/PUTTY/Plink.exe)
    - In other cases the default settings will do.

## Install

### Clone this repository

1. Download GitHub Desktop from https://desktop.github.com/
1. Login to the IBM Enterprise GitHub page (github.ibm.com) with the app.
1. Clone the repository. Repository is now in Documents\GitHub

### Install requirements from requirements.txt

In Powershell, issue the following 2 commands:

```powershell
cd $env:HOMEPATH\Documents\Github\GIT-WIKI
pip install -r requirements.txt
```

### Editing

You can edit the wiki with several text editors, here is two recommendations, personally i recommend Visual Studio Code:

* [Visual Studio Code](https://na.artifactory.swg-devops.com/artifactory/g2o-asset-repo/Visual%20Studio%20Code%20-%20LIUA)
* [Notepad++](https://na.artifactory.swg-devops.com/artifactory/webapp/#/artifacts/browse/tree/General/g2o-asset-repo/Notepad++%20-%20IUA)

### Run the development server

Eiter manually change directory to the GIT-Wiki location, and use the following command

```powershell
mkdocs serve
```

Alternatively we included a ps1 script in the repo named `WikiOpener.ps1`.

1. Right click on it, and choose "Run with Powershell" option. It will ask for policy elevation, enable that.
2. The it will prompt you in a pop up window to locate GIT-WIKI folder (it should be located in /Documents/Github/GIT-WIKI)
3. Aftewards you can launch the virtual wiki environment by rigth clicking and choosing "Run with Powershell" option.

Every changes are tracked

## Publish

For publishing, use [GitHub Desktop](https://desktop.github.com/). You need to commit your changes beforehand.

## Additional information

### Build making

After you pushed the wiki, SOT-Cube will notice this, and wll automatically pull the changes fom the Github account, and it will build it.

### Access

Prod environment: http://sot-operations.bud-gd.hu.ibm.com:8080/

Virtualization: if selfserve building is finished, it listens on port 8000. you can reach it through localhost:8000
