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

  ## routes をネストする
  ルーティングをネスト（入れ子）にすることで、親子関係をルーティングで表すことができます。cardに関してはlistに対して「子」の関係になるので、ネストすることで、どのリストに紐づくかを明示できます。
  例：
  resources :list, only: %i(new create edit update destroy) do
    resources :card, only: %i(new create)
  end

  ## link_toにdoを使っています。画像や要素をリンクにしたい場合、link_toでブロック構文を利用します。

  <%= link_to パス do %>
  ...
  <% end %>

              <%= link_to list_card_path(list, card), class:"cardDetail_link" do %>
              ここから
                <div class="card">
                  <h3 class="card_title"><%= card.title %></h3>
                  <% if card.memo.size > 0 %>
                    <div class="card_detail is-exist"><i class="fas fa-bars"></i></div>
                  <% end %>
                </div>
              ここまでをリンクにしたいので do を使ってリンクにブロックを構成している
              <% end %>

## only と except 
only 指定されたルーティングだけを生成
except 指定したルーティングのみを生成しない

## link_toでボタンをクリックしたら、確認用のアラートを出したい時
 <%= link_to 'リンク名', パス,data: { アラートさせたい内容 } %>
 例：

 <%= link_to '削除をする', パス, class: "text-danger delete_btn", method: :delete, data: { confirm: "このカードを削除して大丈夫ですか?" } %>

 # select 使い方
 select プロパティ名, タグの情報, {オプション}, {HTMLオプション}
- プロパティ名 : カラム名 (下記に補足あり)
- タグの情報 : セレクトボックス表示に使うデータの配列 or ハッシュ
- オプション : セレクトボックスのオプション（include_blank, selectedなど）
- HTMLオプション : HTMLのオプション (id, classなど)
参照： https://310nae.com/rails-selectbox/

例：
<%= select :card, :list_id, @lists.map{ |l| [l.title, l.id] }, {}, { class: 'form-control' } %>



