# homebrew-tap

DeepSeek Code 的 Homebrew 分发渠道。

## 安装

```bash
brew tap shidesheng0218/tap
brew install --cask deepseek-code
```

一行版本：

```bash
brew install --cask shidesheng0218/tap/deepseek-code
```

Homebrew 安装时会自动剥离 quarantine 属性，首次打开双击即可，
不需要右键绕过 Gatekeeper。

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
