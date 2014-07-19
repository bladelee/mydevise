class AddClientsTable < ActiveRecord::Migration
  def change
	  create_table "clients", :force => true do |t|
	    t.string   "name"
	    t.string   "plainPassword"
	    t.string   "hashed_password"
	    t.string   "sip_user"
	    t.string   "sip_pass"
	    t.integer  "public_carrier_id"
	    t.float    "balance",                :default => 0.0
	    t.datetime "created_at",                                :null => false
	    t.datetime "updated_at",                                :null => false
	    t.string   "salt",                   :default => ""
	    t.string   "email",                  :default => "",    :null => false
	    t.string   "encrypted_password",     :default => "",    :null => false
	    t.string   "reset_password_token"
	    t.datetime "reset_password_sent_at"
	    t.datetime "remember_created_at"
	    t.integer  "sign_in_count",          :default => 0
	    t.datetime "current_sign_in_at"
	    t.datetime "last_sign_in_at"
	    t.string   "current_sign_in_ip"
	    t.string   "last_sign_in_ip"
	    t.integer  "max_calls",              :default => 1
	    t.boolean  "proxy_media",            :default => false
	    t.boolean  "bypass_media",           :default => false
	  end
  end

end
