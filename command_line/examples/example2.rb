class Client
  attr_accessor :epp
end

module Roles
  class EPP < Struct.new(:object)
    def update_latest_epp
      object.epp = "Latest EPP"
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

