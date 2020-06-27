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

  def create
  	@theme = Theme.new(params[:theme].permit(:title))
  	@theme.save
  	redirect_to themes_index_path
  end

  def delete
  	@theme = Theme.find(params[:id])
  	@theme.destroy
  	redirect_to themes_index_path
  end
end
