# CRC 计算器

🔐 在线 CRC16 和 CRC32 校验值计算工具

## 功能特点

- ✅ **CRC16 计算** - 完全兼容原 Python 脚本的算法
- ✅ **CRC32 计算** - 完全兼容原 Perl 脚本的算法
- ✅ **文件上传** - 支持拖放或选择多个文件
- ✅ **文本计算** - 直接输入文本内容计算 CRC
- ✅ **无需安装** - 纯浏览器运行，无需任何环境依赖
- ✅ **隐私保护** - 所有计算在本地完成，文件不会上传到服务器
- ✅ **移动端友好** - 响应式设计，支持手机和平板

## 在线使用

访问：https://YOUR_USERNAME.github.io/crc-calculator/

（部署后替换为实际地址）

## 本地运行

1. 克隆仓库：
```bash
git clone https://github.com/YOUR_USERNAME/crc-calculator.git
cd crc-calculator
```

2. 直接用浏览器打开 `index.html` 文件即可使用

或者使用简单的 HTTP 服务器：
```bash
# Python 3
python3 -m http.server 8000

# 或者使用 Node.js
npx http-server
```

然后访问 http://localhost:8000

## 部署到 GitHub Pages

### 方法一：通过 GitHub 网页操作

1. 在 GitHub 上创建新仓库 `crc-calculator`
2. 上传 `index.html` 文件
3. 进入仓库的 Settings -> Pages
4. 在 "Source" 下选择 "main" 分支
5. 点击 "Save"
6. 等待几分钟后，访问 `https://YOUR_USERNAME.github.io/crc-calculator/`

### 方法二：通过命令行

```bash
# 初始化 git 仓库
git init

# 添加文件
git add .

# 提交
git commit -m "Initial commit: CRC Calculator"

# 添加远程仓库
git remote add origin https://github.com/YOUR_USERNAME/crc-calculator.git

# 推送到 GitHub
git branch -M main
git push -u origin main

# 启用 GitHub Pages（或通过网页设置）
gh repo edit --enable-pages --pages-branch main
```

## 使用说明

### 文件计算模式

1. 切换到"文件计算"标签
2. 拖放文件到上传区域，或点击选择文件
3. 支持同时选择多个文件
4. 计算结果会立即显示，包括 CRC16 和 CRC32 值
5. 点击"复制"按钮可复制结果

### 文本计算模式

1. 切换到"文本计算"标签
2. 在文本框中输入要计算的内容
3. 点击"计算 CRC"按钮
4. 查看 CRC16 和 CRC32 结果

## 算法说明

### CRC16
实现与原 Python 脚本完全一致的 CRC16 算法：
- 初始值：0xFFFF
- 多项式：标准 CRC16-CCITT

### CRC32
实现标准的 CRC32 算法：
- 初始值：0xFFFFFFFF
- 多项式：0xEDB88320（IEEE 802.3 标准）
- 与原 Perl 脚本的 Archive::Zip 模块兼容

## 技术栈

- 纯 HTML + CSS + JavaScript
- 无外部依赖
- 响应式设计
- 现代浏览器支持

## 兼容性

- ✅ Chrome / Edge (最新版本)
- ✅ Firefox (最新版本)
- ✅ Safari (最新版本)
- ✅ 移动端浏览器

## 原始脚本

本项目将以下命令行工具转换为 Web 应用：

- `crc16` - Python 脚本，用于计算文件的 CRC16
- `crc32` - Perl 脚本，用于计算文件的 CRC32

## 许可证

MIT License

## 贡献

欢迎提交 Issue 和 Pull Request！

## 更新日志

### v1.0.0 (2026-02-04)
- 初始版本
- 支持 CRC16 和 CRC32 计算
- 支持文件和文本输入
- 现代化的用户界面
