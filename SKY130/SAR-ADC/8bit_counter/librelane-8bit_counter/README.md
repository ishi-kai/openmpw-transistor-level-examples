# 事前準備

## nixのインストール）
> [!Warning]
> nixがすでに入っている場合は不要です。

サイト([https://librelane.readthedocs.io/en/stable/installation/nix_installation/installation_linux.html](https://librelane.readthedocs.io/en/stable/installation/nix_installation/installation_linux.html))にしたがって進めてください。

## このリポジトリ+サブモジュールをクローン
```terminal
git clone --recursive <このリポジトリのリンク>
```

# ① 起動時：nixシェルに入る
```terminal
cd submodules/librelane
nix-shell shell.nix
```

# ② 8bit_counterでGDSを作ろう
```terminal
../ishikai-sar-logic-verilog/
├── config     # 8bit_counter向けのconfig
├── README.md
├── src        # 8bit_counterのHDLファイル
└── submodules
```
