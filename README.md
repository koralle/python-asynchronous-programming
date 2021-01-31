# python-asynchronous-programming


## Setup

VSCode上で拡張機能[Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)を使用することを想定して作成しました。

### For Windows

1. WSL2にDockerがインストールされていることを確認してください。
2. VSCodeに拡張機能[Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)がインストールされていることを確認してください。
3. Dockerイメージのビルドに成功したら、ターミナル上で `poetry install`を実行してください（`Dockerfile`上で実行しようとしたら何故かうまくいきませんでした...）。

### For Mac and Linux

1. Dockerがインストールされていることを確認してください。
2. VSCodeに拡張機能[Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)がインストールされていることを確認してください。
3. Dockerイメージのビルドに成功したら、ターミナル上で `poetry install`を実行してください（`Dockerfile`上で実行しようとしたら何故かうまくいきませんでした...）。