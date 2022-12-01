class CreateDogProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :dog_profiles do |t|
      t.string :name
      t.string :dob
      t.string :gender
      t.string :breed
      t.string :nationality
      t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.timestamps
    end
  end
end
