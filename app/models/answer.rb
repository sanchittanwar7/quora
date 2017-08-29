class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  ratyrate_rateable "content_quality"
end
