class Client < ActiveRecord::Base
    attr_accessible :name, :plainPassword, :sip_user, :sip_pass
end   