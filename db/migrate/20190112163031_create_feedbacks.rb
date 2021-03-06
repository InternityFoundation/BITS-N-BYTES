class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.integer :feed
      t.integer :user_id
      t.decimal :latitude
      t.decimal :longitude
      t.integer :lighting
      t.integer :crowd
      t.integer :sanitation
      t.text :content

      t.timestamps
    end
  end
end
