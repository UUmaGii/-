#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vitepress/dist

# 初始化 Git 仓库并提交更改
git init
git add -A
git commit -m "deploy"

# 推送到 gh-pages 分支
git branch -M main
git remote add origin git@github.com:你的GitHub用户名/你的GitHub仓库.git
git push -f origin main

cd -
