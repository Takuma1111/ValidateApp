class ApplicationController < ActionController::Base

  #ログインしていないユーザーをログインページにリダイレクトするアクション

  private
  # ログイン済みユーザーかどうか確認
   def logged_in_user
     unless logged_in?
       redirect_to root_path
     end
   end
end
