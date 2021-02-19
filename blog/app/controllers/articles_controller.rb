class ArticlesController < ApplicationController
  def index
    @q = Article.includes(:comments, :author).ransack(params[:q])
    @articles = @q.result(distinct: true)
    # Enables for using all list of predicates on template
    # @q.build_condition
  end

  def show
    @article = Article.find(params[:id])
  end
end
