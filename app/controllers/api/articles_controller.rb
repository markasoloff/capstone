class Api::ArticlesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @articles = Article.all
    # @articles = @articles.where(remote: true)
    render "index.json.jbuilder"
  end

  def show
    @article = Article.find(params[:id])
    render "show.json.jbuilder"
  end


end
