# 快速开始指南

## 🚀 5 分钟部署到 GitHub Pages

### 步骤 1：创建 GitHub 仓库

1. 访问 https://github.com/new
2. 仓库名称输入：`crc-calculator`
3. 选择 `Public`（公开）
4. 不要勾选 "Add a README file"
5. 点击 "Create repository"

### 步骤 2：上传文件

**方法 A：使用命令行（推荐）**

```bash
cd /Users/yf/Downloads/crc-calculator

# 运行部署脚本（替换 YOUR_USERNAME 为你的 GitHub 用户名）
./deploy.sh YOUR_USERNAME

# 例如：./deploy.sh john
```

**方法 B：使用 GitHub 网页**

1. 在你刚创建的仓库页面，点击 "uploading an existing file"
2. 拖放这三个文件：
   - `index.html`
   - `README.md`
   - `.gitignore`
3. 点击 "Commit changes"

### 步骤 3：启用 GitHub Pages

1. 在你的仓库页面，点击 "Settings"（设置）
2. 在左侧菜单找到 "Pages"
3. 在 "Source" 下拉菜单选择 "main" 分支
4. 点击 "Save"
5. 等待 2-3 分钟

### 步骤 4：访问你的网站

访问：`https://YOUR_USERNAME.github.io/crc-calculator/`

例如：`https://john.github.io/crc-calculator/`

---

## 🎉 完成！

现在任何人都可以通过浏览器使用你的 CRC 计算器，无需安装任何环境！

## 📝 本地测试

在部署前想先本地测试？

```bash
cd /Users/yf/Downloads/crc-calculator

# 方法 1：使用 Python
python3 -m http.server 8000

# 方法 2：使用 PHP
php -S localhost:8000

# 方法 3：直接用浏览器打开
open index.html  # macOS
```

然后访问 http://localhost:8000

## ❓ 常见问题

### Q: 推送时提示认证失败？

A: 设置你的 GitHub 认证：

```bash
# 配置用户信息
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# 如果还是失败，使用 Personal Access Token
# 1. 访问 https://github.com/settings/tokens
# 2. 点击 "Generate new token (classic)"
# 3. 勾选 "repo" 权限
# 4. 生成后复制 token
# 5. 推送时用 token 作为密码
```

### Q: GitHub Pages 显示 404？

A: 检查：
1. Pages 设置中是否选择了正确的分支（main）
2. 等待 3-5 分钟让 GitHub 构建网站
3. 检查仓库是否是 Public（公开）

### Q: 想自定义域名？

A: 
1. 在仓库根目录创建 `CNAME` 文件
2. 文件内容写你的域名，如：`crc.example.com`
3. 在你的域名 DNS 设置中添加 CNAME 记录指向 `YOUR_USERNAME.github.io`

### Q: 如何更新网站？

A: 修改文件后重新运行部署脚本：

```bash
./deploy.sh YOUR_USERNAME
```

或者直接：

```bash
git add .
git commit -m "Update"
git push
```

## 🔗 分享链接

部署成功后，你可以这样分享：

- **完整链接**：`https://YOUR_USERNAME.github.io/crc-calculator/`
- **短链**：使用 bit.ly 或 tinyurl.com 创建短链接
- **二维码**：使用 qrcode.com 生成二维码

## 📊 查看访问统计

想知道有多少人使用？可以添加：

1. **Google Analytics** - 免费的访问统计
2. **GitHub Insights** - 仓库的 Insights -> Traffic

## 🎨 自定义样式

想修改外观？编辑 `index.html` 中的 `<style>` 部分：

- 修改颜色：搜索 `#667eea` 和 `#764ba2`
- 修改字体：搜索 `font-family`
- 修改布局：搜索 `max-width`、`padding` 等

## 🐛 报告问题

发现问题？在仓库中创建 Issue：

`https://github.com/YOUR_USERNAME/crc-calculator/issues`
