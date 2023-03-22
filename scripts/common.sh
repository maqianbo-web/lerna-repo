#!/usr/bin/env sh

cd packages

PS3='请输入子项目编号:'

projects=$(ls -d *)

select project in  $projects
do
    if [ ! $project ]; then
        echo "\033[31m 子项目不存在!\033[0m"
        exit 0
    fi
    echo "你执行的子项目是 $project"
    yarn workspace $project run $1
    break
done
