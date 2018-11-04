require 'guardian-content'      
class Api::ArticlesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    response = HTTP.get("https://content.guardianapis.com/search?order-by=newest&q=Trump&show-fields=body&api-key=#{ENV['API_KEY']}")
      array = []
      i = 0
      x = 0
      10.times do  
        title = response.parse["response"]["results"][i]["webTitle"]
        body = response.parse["response"]["results"][x]["fields"]["body"]
        array << title
        array << body
        i = i + 1
        x = x + 1
      end     
      #     i = i + 1
      #   array << selection_body
      #     x = x + 1
      # end
    render json: array
  end
 

  def show
    @article = Article.find(params[:id])
    if params["version"] == "swap"
      render "swap.json.jbuilder"
    elsif
      params["version"] == "add"
      render "add.json.jbuilder"
    elsif
      params["version"] == "redact"
      render "redact.json.jbuilder"
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
    
    @article.headline = params[:headline] || @article.headlinen
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
