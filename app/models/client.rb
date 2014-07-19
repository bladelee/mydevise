class Client < ActiveRecord::Base
    attr_accessible :name, :sip_user, :sip_pass
end   