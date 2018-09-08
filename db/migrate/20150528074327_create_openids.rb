class CreateOpenids < ActiveRecord::Migration
  def change
    create_table :openids do |t|
      t.references :user
      t.string :provider
      t.string :email
      t.string :uid

      t.timestamps
    end
  end
end