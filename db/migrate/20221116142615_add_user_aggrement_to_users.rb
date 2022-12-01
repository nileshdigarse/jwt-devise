class AddUserAggrementToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_agreement, :boolean, default: false
  end
end
