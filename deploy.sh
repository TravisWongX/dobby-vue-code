#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

rm -rf dist
# 构建
yarn build

# cd 到构建输出的目录下
cd dist

# 部署到自定义域域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master
git remote add gitee git@gitee.com:xmix/dobby-vue.git
# 部署到 https://<USERNAME>.github.io/<REPO>
git push -f gitee master

git remote add github git@github.com:TravisWongX/dobby-vue.git

git push -f github master

cd -