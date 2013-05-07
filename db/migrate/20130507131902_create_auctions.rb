class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
