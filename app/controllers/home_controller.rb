class HomeController < ApplicationController
  def index
    @message = "ようこそ、私のブログへ！"
  end

  def about
    @message = "このブログについて"
  end
end
