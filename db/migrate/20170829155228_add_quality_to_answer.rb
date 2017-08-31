class AddQualityToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :content_quality, :integer
  end
end
