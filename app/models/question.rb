class Question < ActiveRecord::Base
  belongs_to :user
  searchkick word_start: [:content]
  def search_data
    {
      content: content
      
    }
  end
end
