#!/bin/bash

BUILD_PWD=`pwd`
export PATH=$BUILD_PWD/tools/linux/Linux_Upgrade_Tool/Linux_Upgrade_Tool:$PATH

upgrade_tool uf rockdev/update.img
