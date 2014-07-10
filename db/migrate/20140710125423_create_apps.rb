class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.boolean :type_message
      t.boolean :type_interphone
      t.boolean :internal_auth
      t.string :outer_auth_server

      t.timestamps
    end
  end
end
