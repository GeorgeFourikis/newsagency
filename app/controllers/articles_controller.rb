class ArticlesController < ApplicationController

  def index
    @articles =Article.all
    # @articles = Article.order(:article).page params[:page]
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:article,:place)
  end
end
