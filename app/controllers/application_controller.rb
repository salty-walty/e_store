class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception	

	before_action :categories, :brands

	def categories
		@categories = Category.order(:name)
	end

	def brands
		@brands = Product.pluck(:brand).uniq.sort
	end
end
