# homebrew-tap

DeepSeek Code 的 Homebrew 分发渠道。

## 安装

```bash
brew tap shidesheng0218/tap
brew trust shidesheng0218/tap
brew install --cask deepseek-code
```

一行版本：

```bash
brew trust shidesheng0218/tap
brew install --cask shidesheng0218/tap/deepseek-code
```

新版 Homebrew 对第三方 tap 的 Cask 要求显式 `brew trust`（一次即可）。

**注意**：Homebrew 6 起不再为 Cask 处理 quarantine 属性。本应用是
adhoc 签名的社区构建，首次启动前需要执行一次（二选一）：

```bash
xattr -dr com.apple.quarantine "/Applications/DeepSeek Code.app"
```

或在 Finder 中右键 App 选择"打开"。只需一次，之后双击即用，
自动更新与 brew 升级均不受影响。

## 升级

```bash
brew upgrade --cask deepseek-code
```

App 内置自动更新（minisign 签名校验），与 brew 升级二选一即可。

## 卸载

```bash
brew uninstall --cask deepseek-code
# 连同会话与设置数据一起删除：
brew uninstall --cask --zap deepseek-code
```

## 维护

Cask 由主仓库 [deepseek-code](https://github.com/shidesheng0218/deepseek-code)
的 `scripts/generate-homebrew-cask.sh` 根据 `dist/release-metadata.json`
与 `dist/SHA256SUMS.txt` 自动生成，版本与校验值随 Release 更新。
