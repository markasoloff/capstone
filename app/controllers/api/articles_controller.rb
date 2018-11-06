require 'guardian-content'      
class Api::ArticlesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    response = HTTP.get("https://content.guardianapis.com/search?order-by=newest&q=Trump&show-fields=body&api-key=#{ENV['API_KEY']}").body
    response = JSON.parse(response)
      @array = []
      i = 0
      6.times do  
        @story_title = (response["response"]["results"][i]["webTitle"]).upcase
        @story_body = response["response"]["results"][i]["fields"]["body"]
        # story_id = response["response"]["results"][i]["id"]
        @story_id = i
        story = {title: @story_title, body: @story_body}
        @array << story
        i = i + 1
        article = Article.find_or_create_by(headline: @story_title, body: @story_body)
      end     
    render json: @array
  end


  # def show
  #   @article = Article.find(params[:id])
  #   if params["version"] == "swap"
  #     render "swap.json.jbuilder"
  #   elsif
  #     params["version"] == "add"
  #     render "add.json.jbuilder"
  #   elsif
  #     params["version"] == "redact"
  #     render "redact.json.jbuilder"
  #   else
  #     render "show.json.jbuilder"
  #   end
  # end

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

  def by_title
    article = Article.find_by(headline: params[:title])
    render json: {id: article.id}
  end

end
