module SessionsHelper

  #ブラウザのCokkieにハッシュ化したユーザーidを保存するメソッド
  # 渡されたユーザーでログインする
  def log_in(user)
    session[:user_id] = user.id
  end


  #cookieに保存されたユーザーidを元に、ユーザーの情報を取得するメソッドです。
  # 現在ログイン中のユーザーを返す (いる場合)
  def current_user
    if session[:user_id]
     #@current_user = @current_user || User.find_by(id: session[:user_id])と同じ意味
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end


  #マイページなど、ログイン中のユーザーにしか表示させたく無いページのbefore_actionでよく使われます。
  #受け取ったユーザーがログイン中のユーザーと一致すればtrueを返す
  def current_user?(user)
    user == current_user
  end


  #現在のユーザーがログインしているかどうかを判別するメソッドです。ログイン状況に応じて表示する画面を切り替えたりする処理が簡単に実装できるようになります
  # ユーザーがログインしていればtrue、その他ならfalseを返す
   def logged_in?
     !current_user.nil?
   end

   #ブラウザのcookieに保存されているユーザーidを削除するメソッドです。
   # 現在のユーザーをログアウトする
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

end
