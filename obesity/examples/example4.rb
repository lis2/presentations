class Client
  attr_accessor :epp
end

require "delegate"
module Roles
  class EPP < DelegateClass(Client)
    def update_latest_epp
      self.epp = "Latest EPP"
    end
  end
end

class Object
  def as(role)
    role.new(self)
  end
end

@client = Client.new
@client.as(Roles::EPP).update_latest_epp
puts @client.epp # Latest EPP

