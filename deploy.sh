#!/bin/bash

# CRC 计算器 GitHub Pages 部署脚本

set -e

echo "🚀 CRC 计算器部署脚本"
echo "====================="
echo ""

# 检查是否提供了仓库名
if [ -z "$1" ]; then
    echo "❌ 错误：请提供 GitHub 用户名"
    echo ""
    echo "用法: ./deploy.sh YOUR_GITHUB_USERNAME [REPO_NAME]"
    echo "示例: ./deploy.sh username crc-calculator"
    exit 1
fi

GITHUB_USERNAME=$1
REPO_NAME=${2:-crc-calculator}

echo "📝 配置信息："
echo "   GitHub 用户名: $GITHUB_USERNAME"
echo "   仓库名称: $REPO_NAME"
echo ""

# 检查是否已经初始化 git
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 仓库..."
    git init
    git branch -M main
else
    echo "✅ Git 仓库已存在"
fi

# 检查是否有远程仓库
if ! git remote get-url origin &> /dev/null; then
    echo "🔗 添加远程仓库..."
    git remote add origin "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"
else
    echo "✅ 远程仓库已配置"
    CURRENT_REMOTE=$(git remote get-url origin)
    echo "   当前远程地址: $CURRENT_REMOTE"
fi

# 添加文件
echo "📁 添加文件..."
git add .

# 检查是否有更改
if git diff --staged --quiet; then
    echo "✅ 没有新的更改需要提交"
else
    # 提交
    echo "💾 提交更改..."
    COMMIT_MSG="Update CRC Calculator - $(date '+%Y-%m-%d %H:%M:%S')"
    git commit -m "$COMMIT_MSG"
    echo "✅ 提交完成"
fi

# 推送到 GitHub
echo "⬆️  推送到 GitHub..."
if git push -u origin main 2>&1 | tee /tmp/git_push_output.txt; then
    echo "✅ 推送成功！"
else
    echo ""
    echo "❌ 推送失败！"
    echo ""
    echo "可能的原因："
    echo "1. 仓库不存在 - 请先在 GitHub 上创建仓库："
    echo "   https://github.com/new"
    echo ""
    echo "2. 没有权限 - 请检查 GitHub 认证："
    echo "   git config --global user.name \"Your Name\""
    echo "   git config --global user.email \"your.email@example.com\""
    echo ""
    echo "3. 需要配置 SSH 密钥或使用 Personal Access Token"
    echo ""
    exit 1
fi

echo ""
echo "═══════════════════════════════════════"
echo "✅ 部署完成！"
echo "═══════════════════════════════════════"
echo ""
echo "接下来的步骤："
echo ""
echo "1. 访问你的仓库设置页面："
echo "   https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/settings/pages"
echo ""
echo "2. 在 'Source' 部分，选择 'main' 分支"
echo ""
echo "3. 点击 'Save' 保存设置"
echo ""
echo "4. 等待 2-3 分钟后，访问你的网站："
echo "   https://${GITHUB_USERNAME}.github.io/${REPO_NAME}/"
echo ""
echo "📌 提示：如果你安装了 GitHub CLI (gh)，可以运行："
echo "   gh browse --settings"
echo ""
