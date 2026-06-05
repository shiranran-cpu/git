#!/bin/bash

# --------------- 配置区 ---------------
# 把这里改成你的 GitHub 仓库地址（HTTPS 或 SSH 都可以）
GITHUB_REPO="https://github.com/你的用户名/AI_Watermark_Detection.git"
# 主分支名
BRANCH_NAME="main"
# 提交说明
COMMIT_MSG="Initial commit"
# --------------------------------------

echo "🚀 开始上传项目到 GitHub..."

# 检查 Git 是否安装
if ! command -v git &> /dev/null
then
    echo "❌ Git 未安装，请先安装 Git"
    exit 1
fi

# 初始化 Git 仓库
if [ ! -d ".git" ]; then
    git init
    echo "✅ Git 仓库已初始化"
else
    echo "ℹ Git 仓库已存在，跳过初始化"
fi

# 添加远程仓库
git remote remove origin 2>/dev/null
git remote add origin $GITHUB_REPO
echo "✅ 已关联远程仓库：$GITHUB_REPO"

# 添加文件并提交
git add .
git commit -m "$COMMIT_MSG"
echo "✅ 文件已提交"

# 重命名主分支
git branch -M $BRANCH_NAME

# 推送到 GitHub
git push -u origin $BRANCH_NAME

echo "🎉 上传完成！请在浏览器查看你的仓库"
