class ArticlesController < ApplicationController
  before_action :require_user, except: [:index,:show]


  def index
    @articles = Article.search(params[:search])
  end

  def show
    @article=Article.find(params[:id])
  end

  def new
    @article=Article.new
  end

  def create
    @article=Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article=Article.find(params[:id])
  end

  def update
    @article=Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article=Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

end

private
  def article_params
    params.require(:article).permit(:title,:category,:text).merge(:author => @current_user.username)
  end
