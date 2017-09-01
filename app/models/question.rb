class Question < ActiveRecord::Base
  belongs_to :user
  searchkick 
end
