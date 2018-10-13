# Eye Emotion Pointing

## 使用環境

- Tobii Eye Tracker 4C

- HSP: 3.4

- Processing: 3

- Google Chrome


## 使い方

- [chrome://extensions](chrome://extensions) を開き、``` /ChromeExtension ```を拡張機能として追加する。

- ``` /Server/Server.pde ```を起動する。 http://127.0.0.1:9000 にてHTTPサーバがListenするようになる。

- ``` /MinimalGazeDataStream/MinimalGazeDataStream.exe ```を起動する。

- https://www.auduno.com/clmtrackr/examples/clm_emotiondetection.html を開く。STARTボタンを押し、表情検出を開始する。先ほど追加した拡張機能によって、Happinessの値がProcessingのHTTPサーバに常に送られるようになる。

- ``` /Pointing/index.hsp ```を起動する。MinimalGazeDataStreamとProcessingの値を読み取り、笑顔になった時の座標をクリックする仕組みになっている。
