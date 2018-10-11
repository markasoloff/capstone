class Api::ArticlesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @articles = Article.all
    # @articles = @articles.where(remote: true)
    render "index.json.jbuilder"
  end

  def show
    @article = Article.find(params[:id])
    if params["version"] == "swap"
      render "swap.json.jbuilder"
    else
      render "show.json.jbuilder"
    end
  end

  def create
   @article = Article.new(
                          headline: params[:headline],
                          body: params[:body]
                          )
  @article.save
  render 'show.json.jbuilder'
  end

  def update
    @article = Article.find(params[:id])
    
    @article.headline = params[:headline] || @article.headline
    @article.body = params[:body] || @article.body

    if @article.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @article.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    render json: {status: "Article was removed."}
  end




end
