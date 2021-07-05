class SearchesController < ApplicationController
	before_action :authenticate_user!

	def search
		@model = params[:model]
		if @model == 'user'
			@records = User.search_for(params[:content], params[:method])
		else
			@records = Book.search_for(params[:content], params[:method])
		end
	end
end
