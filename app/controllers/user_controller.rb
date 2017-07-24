class UserController < ApplicationController
	before_action :authenticate_user!
	def index
		respond_to do |format|
			format.html{
				@question = Question.new
				@feed = Question.all.order(created_at: :desc)
			}
			format.js{ }
		end
	end
	
end
