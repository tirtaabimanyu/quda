class HomeController < ApplicationController
	def index
		redirect_to me_index_path if user_signed_in?
	end
end
