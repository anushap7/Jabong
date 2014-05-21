class ArticlesController < ApplicationController

  before_filter :authenticate_user!

  def index

        @articles = Article.search(params[:search]).order("name").page(params[:page]).per(8)

   
end
	def new
    @article = Article.new
  end
  def show
  @article = Article.find(params[:id])
end
 
  def create
  @article = Article.new(article_params)
 
  if @article.save
    redirect_to articles_path, :notice => "successfully created!"
  else
    render 'new'
  end
end
def edit
  @article = Article.find(params[:id])
end
def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to articles_path, :notice => "successfully Updated!"
  else
    render 'edit'
  end
end
def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path, :notice => "successfully Deleted!"
end

def article_demo
  end
 
private
  def article_params
    params.require(:article).permit(:name, :item, :amount)
  end
end

