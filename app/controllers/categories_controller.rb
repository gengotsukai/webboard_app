class CategoriesController < ApplicationController
	def index
		@category = Category.new
		@categories = Category.all
	end

	def create
		@category = Category.new(category_params)
		if  @category.save
      		redirect_to categories_path, flash: { notice: "カテゴリーの作成が完了しました！" }
    	else
    		@category = Category.all
      		render :index
    	end
	end

	def destroy
		@category = Category.find(params[:id])
      	if  @category.destroy
      	    redirect_to categories_path, flash: { notice: "カテゴリーを削除しました！" }
      	else
      		@category = Category.all
      		render :index
      	end
	end

	def category_params
		params.require(:category).permit(:name)
	end

end
