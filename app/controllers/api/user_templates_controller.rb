class Api::UserTemplatesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

    def index
      @user_templates = UserTemplate.all
      # @user_templates = @user_templates.where(remote: true)
      render "index.json.jbuilder"
    end

    def show
      @user_template = UserTemplate.find(params[:id])
      render "show.json.jbuilder"
    end

    def create
       @user_template = UserTemplate.new(
                        target: params[:wordOne],
                        new_content: params[:subWordOne],
                        rule: ""
                        )
      @user_template.save
      render json: {status: "Template accepted"}
    end

    def update
      @user_template = UserTemplate.find(params[:id])
      
      @user_template.target = params[:target] || @user_template.target
      @user_template.new_content = params[:new_content] || @user_template.new_content
      @user_template.rule = params[:rule] || @user_template.rule
      
      if @user_template.save
        render 'show.json.jbuilder'
      else
        render json: {errors: @user_template.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @user_template = UserTemplate.find(params[:id])
      @user_template.destroy
      render json: {status: "Template was removed."}
    end
end
