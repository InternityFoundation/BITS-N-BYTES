class AddCrowdToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :crowd, :integer
  end
end
