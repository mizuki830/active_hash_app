class ArticlesController < ApplicationController
  def index
    @articles = Article.order("created_at DESC")
  end

  def new
    @articles = Article.new
  end

  def created_at
    @articles = Article.neww(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title,:text,:genre_id)
  end
end
