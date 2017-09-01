class UserController < ApplicationController
	# before_action :authenticate_user!
	def index
		respond_to do |format|
			format.html{
				@question = Question.new
				search = params[:term].present? ? params[:term] : nil
				@questions = if search
					@feed = Question.search(search)
				else
					@feed = Question.all.order(created_at: :desc).page(params[:page]).per(5)
				end
				@answer = Answer.new
				@ans_feed = Answer.all.order(created_at: :desc)
			}
			format.js{ }
		end
	end
	def profile
	end
	def login
	end
	def autocomplete
		render json: Question.search(params[:query], {
			fields: ["content"],
			match: :word_start,
			limit: 10,
			load: false,
			misspelling: {below: 5}
		}).map(&:content)
	end
end
