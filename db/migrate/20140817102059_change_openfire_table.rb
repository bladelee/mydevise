class ChangeOpenfireTable < ActiveRecord::Migration
    def change
      create_table "groups", :primary_key => "groupName", :force => true do |t|
        t.string "description"
      end

      create_table "groupprops", :id => false, :force => true do |t|
        t.string "groupName", :limit => 50,  :null => false
        t.string "name",      :limit => 100, :null => false
        t.text   "propValue",                :null => false
      end

      create_table "groupclients", :id => false, :force => true do |t|
        t.string  "groupName",     :limit => 50,  :null => false
        t.string  "username",      :limit => 100, :null => false
        t.integer "administrator", :limit => 1,   :null => false
      end
    end
  end
