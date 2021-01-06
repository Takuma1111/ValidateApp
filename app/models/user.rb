class User < ApplicationRecord
  #作成したmodelにpassword_digestがある場合、以下のコードを書けば、セキュアにハッシュ化したパスワードを
  #DB内のpassword_digestに保存することができる

  #仮想的なpasswordとpassword_confirmationが使えるようになり、存在性と値が一致するかどうかのバリデーションも追加される。

  #authenticateメソッドが使えるようになる (引数の文字列がパスワードと一致するとUserオブジェクトを、間違っているとfalseを返すメソッド) 。
  
  has_secure_password
end
