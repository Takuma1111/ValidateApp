class User < ApplicationRecord
  #作成したmodelにpassword_digestがある場合、以下のコードを書けば、セキュアにハッシュ化したパスワードを
  #DB内のpassword_digestに保存することができる

  has_secure_password
end
