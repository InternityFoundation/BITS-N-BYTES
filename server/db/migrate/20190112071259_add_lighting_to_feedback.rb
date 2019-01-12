class AddLightingToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :lighting, :integer
  end
end
