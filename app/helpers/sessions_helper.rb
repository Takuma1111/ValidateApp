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
end
