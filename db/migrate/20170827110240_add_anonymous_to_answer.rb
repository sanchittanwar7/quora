class AddAnonymousToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :anonymous, :boolean
  end
end
