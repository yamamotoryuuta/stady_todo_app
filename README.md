# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# stady_todo_app

## 部分テンプレートの使い方

ファイル名を_で始める
読み込みたいところに
<%= render 'ディレクトリ／ファイル名（＿と拡張子はなし）' %>
で読み込む

参考：https://railsguides.jp/action_view_overview.html#%E3%83%91%E3%83%BC%E3%82%B7%E3%83%A3%E3%83%AB


 ## Rails deviseで使えるようになるヘルパーメソッド一覧
 https://qiita.com/tobita0000/items/866de191635e6d74e392

 ## rails generate migrationコマンドまとめ
 https://qiita.com/zaru/items/cde2c46b6126867a1a64

 ## バリデーション
 値がデータベースに保存される前に、そのデータが正しいかどうかを検証する仕組み
  validates :カラム名, バリデーション

  例：validates :name, presence: true, length: { maximum: 20 }
  presence: trueは値が空ではないということ確かめるバリデーション

  ## render と redirect_to の違い

  エラー画面などのviewのみを表示させたい時は render

  データ更新などのcontrollerの処理が必要な場合は redirect_to

  参照：https://qiita.com/morikuma709/items/e9146465df2d8a094d78