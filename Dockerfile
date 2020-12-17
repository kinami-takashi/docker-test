#FROM ベースとなるimageファイル（主にubuntuOS関連）
#docker hubの「nvedia/cuda」リポジトリを検索。Tagsから使用したいCudaのバージョンのimageを持ってくる
FROM ubuntu:16.04

#RUN コマンドを実行
#必要なパッケージをインストール
#apt-get installの際に「-y」を指定することで、ターミナルに表示されるインタラクティブな入力を全て「y」で返答
RUN apt-get update && apt-get install -y \
    sudo \
    wget \
    vim

#CMD $docker run の際にデフォルトで実行されるコマンド
CMD ["/bin/bash"]
