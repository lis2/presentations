class Client
  attr_accessor :epp
end

module Roles
  module EPP
    def update_latest_epp
      self.epp = "Latest EPP"
    end
  end
end

class Object
  def as(role)
    self.extend(role)
  end
end

@client = Client.new
@client.as(Roles::EPP).update_latest_epp
puts @client.epp # Latest EPP

