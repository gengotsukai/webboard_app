class ThemesController < ApplicationController
  def index
  	@themes = Theme.all
  	@newTheme = Theme.new
  end

  def show
  	@theme = Theme.find(params[:id])
  	@newcomment = Comment.new(:theme_id => params[:id])
  	@comments = Comment.where(theme_id: params[:id])
  end

  def search
    @searchedcomments = Comment.search(params[:search])
  end

  def create
  	@theme = Theme.new(theme_params)
  	@theme.save
  	redirect_to themes_index_path
  end

  def delete
  	@theme = Theme.find(params[:id])
  	@theme.destroy
  	redirect_to themes_index_path
  end

  def theme_params
    params.require(:theme).permit(:title, category_ids: [])
  end
end
