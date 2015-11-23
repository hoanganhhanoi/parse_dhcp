
class Net

  attr_reader :subnet, :netmask, :option, :differ, :pool
  def initialize
    @subnet = ""
    @netmask = ""
    @option = {}
    @differ = {}
    @pool = { "range" => "",
              "allow" => "", 
              "hosts" => {}
            }
  end
end