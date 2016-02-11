class AddTopicIdtoComments < ActiveRecord::Migration
  def change
      add_column :comments, :topic_id, :integer
  end
end
