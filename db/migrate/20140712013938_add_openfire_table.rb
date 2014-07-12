class AddOpenfireTable < ActiveRecord::Migration
  def change
	  create_table "ofgroup", :primary_key => "groupName", :force => true do |t|
	    t.string "description"
	  end

	  create_table "ofgroupprop", :id => false, :force => true do |t|
	    t.string "groupName", :limit => 50,  :null => false
	    t.string "name",      :limit => 100, :null => false
	    t.text   "propValue",                :null => false
	  end

	  create_table "ofgroupuser", :id => false, :force => true do |t|
	    t.string  "groupName",     :limit => 50,  :null => false
	    t.string  "username",      :limit => 100, :null => false
	    t.integer "administrator", :limit => 1,   :null => false
	  end

	  create_table "roles", :force => true do |t|
	    t.string   "name"
	    t.datetime "created_at", :null => false
	    t.datetime "updated_at", :null => false
	  end

	  create_table "roles_users", :id => false, :force => true do |t|
	    t.integer "role_id"
	    t.integer "user_id"
	  end  	
  end
end
