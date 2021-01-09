# README
＜アプリケーション概要＞
化粧品、特に下地・ファンデーションの相性の良い組み合わせを検索することができるアプリ


＜URL＞


＜テスト用アカウント＞
email: tanaka@test
password: tanaka1128


＜利用方法＞
・商品一覧表示機能
トップページから"アイテム一覧へ"ボタン押下

・商品登録方法
テストアカウントでログイン→トップページから右上の"アイテム”ボタン押下

・商品検索方法
トップページから”アイテム一覧へ”ボタン押下→カテゴリー、ブランド名を選択し、検索



＜解決したい課題＞
化粧をこまめに直す時間のない、忙しい女性に向けた最強のベースメイク作りを提案するアプリを作成しました。
全ての化粧品は大まかに水・油・界面活性剤の組み合わせによってできており、それぞれの配分によって特性が異なります。特に、本当に崩れない化粧をするのであれば下地・ファンデーションというベースメイクの組み合わせが大変重要です。例えば油分が多い下地と、同じく油分が多いファンデーションを組み合わせると、保湿力はあっても崩れやすいベースメイクになってしまいます。
ただ、多くの化粧品メーカーは、各商品をそれぞれ得意な分野を製造している外部の受託会社に発注していることが多く、同じブランドであっても組み合わせがベストとは言えません。
そこで、実際に使ってみた組み合わせをシェアする場を作ることで、よりベストな組み合わせを知ることができるのではないかと考えました。



＜実装した機能について＞
#ユーザー登録機能
・ニックネーム、メールアドレス、パスワード、確認用のパスワードを入力することでユーザーを登録できる
・ユーザー登録することでアイテムを登録したり、コメントしたりすることができるようになる

#アイテム登録機能
・アイテム名、価格、カテゴリー（下地もしくはファンデーション）、ブランド名、アイテムの写真（任意）を入力することで商品が登録できる
・登録した商品は画像・商品名・価格のみが一覧表示されるように実装する

#アイテム詳細表示機能
・登録済みの商品の詳細（アイテム名、価格、カテゴリー、ブランド名、アイテムの写真）が表示される
・詳細の下部には登録済みの商品に対しのコメントを表示する

#登録アイテムの検索機能
・カテゴリー（下地もしくはファンデーション）、ブランド名を検索することで条件に合致した商品のみが一覧で表示される
・商品名をクリックすることでその商品の詳細ページに遷移することができる

#登録アイテムへのコメント機能
・登録済みの商品に対してコメントすることができる
・登録済みの商品との相性が良い下地またはファンデーションを入力する



＜実装予定の機能について＞
#コメント機能のアップデート
・現状、コメントは文章のみの入力しかできないため、アイテム登録と同じ項目で登録できるようにする
・商品詳細ページに表示させる

#相性の良いアイテムの提案機能
・アイテム登録の際成分表示を入力する項目を作成し、内容によって事前にデータベースに保存してあるアイテムから相性の良い商品を提案する





## users table

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | null: false |
| encrypted_password    | string  | null: false |

### Association
- has_many :items
- has_many :comments


## items table

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| image                 | text    | null: false |
| item_name             | string  | null: false |
| cost                  | integer | null: false |
| user_id               | integer | null: false, foreign_key: true |
| brand_id              | integer | null: false, foreign_key: true |
| category_id           | integer | null: false, foreign_key: true |


### Association
- belongs_to :user
- has_many :comments


## comments table

| Column               | Type    | Options     |
| ---------------      | ------- | ----------- |
| image                | text    | null: false |
| recommend_item_name  | string  | null: false |
| cost                 | integer | null: false |
| description          | text    | null: false |
| user_id              | integer | null: false, foreign_key: true |
| item_id              | integer | null: false, foreign_key: true |
| brand_id             | integer | null: false, foreign_key: true |
| category_id          | integer | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :item

