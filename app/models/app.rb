class App < ActiveRecord::Base
  attr_accessible :internal_auth, :name, :outer_auth_server, :type_interphone, :type_message
end
