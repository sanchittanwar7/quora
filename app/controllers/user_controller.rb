class UserController < ApplicationController
	# before_action :authenticate_user!
	def index
		respond_to do |format|
			format.html{
				@question = Question.new
				@feed = Question.all.order(created_at: :desc).limit(10)
				@answer = Answer.new
				@ans_feed = Answer.all.order(created_at: :desc)
			}
			format.js{ }
		end
	end
	def profile
	end
	
end
