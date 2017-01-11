class WelcomeController < ApplicationController
  def index
    flash[:notice] = "hello,你好！"
  end
end
