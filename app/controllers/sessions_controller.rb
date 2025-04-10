class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報ページにリダイレクトする
    else
      # エラーメッセージを作成する
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
  end
end
