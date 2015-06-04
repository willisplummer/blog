class PagesController < ApplicationController

	def show
		@article = Article.find(params[:author])
  		@page = Page.find(params[:page_number])
 	end

	def create
		@article = Article.find(params[:article_id])
		@page = @article.pages.create(page_params)
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:article_id])
		@page = @article.pages.find(params[:id])
		@page.destroy
		redirect_to article_path(@article)
	end

	private
		def page_params
			params.require(:page).permit(:page_number, :body)
		end
end