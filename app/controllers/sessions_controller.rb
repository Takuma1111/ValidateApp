class SessionsController < ApplicationController
  #Sessionヘルパーモジュールを読み込む
  include SessionsHelper
  before_action :logged_in_user, only:[:edit, :update, :destroy]


  def new
  end

  #Cokkieに保存されたユーザーIDを削除し、ログアウトを行うメソッド
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end


  #ログインページから送信された情報を受けとり、ログイン処理を行うメソッド
  def create
    user = User.find_by(email: params[:session][:email].downcase) #downcaseは大文字を小文字に変換する
       if user && user.authenticate(params[:session][:password])
         log_in user
         redirect_to root_path

       else
         render 'new'
    end
  end

end
