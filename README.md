# Macセットアップ
新品Macをフロントエンド開発ができる状態までセットアップする手順。

## zsh
このリポジトリのディレクトリで実行することを想定。
```
cp zshrc ${HOME}/.zshrc
cp zprofile ${HOME}/.zprofile
source ${HOME}/.zprofile
```

## システム環境設定
Apple ID > メディアと購入
	Touch IDを使って購入 : チェック
トラックパッド > ポイントとクリック
	調べる＆データ検出 : チェック外す
	クリック : 弱い
	軌跡の速さ : 速い
キーボード > キーボード
	修飾キー : Caps LockとControlを入れ替え

## アプリインストール
[EasyRes](https://apps.apple.com/jp/app/easyres/id688211836?mt=12)
[ウイルスバスター](https://www.trendmicro.com/ja_jp/forHome/products/vb.html)

あとはコマンドで
```
# [Homebrew](https://brew.sh/index_ja)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# caskそ指定しなくても見つかるおまじない
# https://github.com/Homebrew/homebrew-cask
# https://github.com/Homebrew/homebrew-cask-versions
brew tap homebrew/cask-versions

# [iterm2](https://iterm2.com/)
brew install --cask iterm2
# [neofetch](https://github.com/dylanaraps/neofetch)
brew install neofetch
# [appcleaner](https://freemacsoft.net/appcleaner/)
brew install --cask appcleaner
# [Google日本語入力](https://www.google.co.jp/ime/)
brew install --cask google-japanese-ime
# [Google Chrome](https://www.google.com/intl/ja_jp/chrome/)
brew install --cask google-chrome
# [Visual Studio Code](https://azure.microsoft.com/ja-jp/products/visual-studio-code/)
brew install --cask visual-studio-code
# [alfred](https://www.alfredapp.com/)
brew install --cask alfred
# [slack](https://slack.com/intl/ja-jp/)
brew install --cask slack
# [git](https://git-scm.com/)
brew install git
# [sourcetree](https://www.sourcetreeapp.com/)
brew install --cask sourcetree
# [asdf](https://github.com/asdf-vm/asdf)
brew install asdf
# [gnupg](https://gnupg.org/)
brew install gnupg

# nodejs
asdf plugin add nodejs
asdf install nodejs $(asdf list all nodejs | tail -n 1)
asdf global nodejs $(asdf list all nodejs | tail -n 1)
# yarn
asdf plugin add yarn
asdf install yarn $(asdf list all yarn | tail -n 1)
asdf global yarn $(asdf list all yarn | tail -n 1)
```

## SSH鍵の作成
githubなどなどで使用
```
ssh-keygen -t rsa -b 4096 -C "hogehoge@fuga.com"
cp config ${HOME}/.ssh/config
```

## gitのおまじない
```git config --global credential.helper osxkeychain```

## オプション
google-chrome-canary - homebrew

	



