#! /bin/bash
#######################################################################
#     File Name           :     build.sh
#     Created By          :     Les1ie
#     Email               :     iansmith@qq.com
#     Creation Date       :     [2018-11-05 13:11]
#     Last Modified       :     [2018-11-05 13:19]
#     Description         :     build script
#######################################################################

docker run -it --rm -v $PWD:/data builden jekyll build

cd _site
wget https://mirrors.tuna.tsinghua.edu.cn/static/tunasync.json -O static/tunasync.json
wget https://mirrors.tuna.tsinghua.edu.cn/static/tunet.json -O static/tunet.json
mkdir -p static/status
wget https://mirrors.tuna.tsinghua.edu.cn/static/status/isoinfo.json -O static/status/isoinfo.json
