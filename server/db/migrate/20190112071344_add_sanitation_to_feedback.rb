class AddSanitationToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :sanitation, :integer
  end
end
