
class Host

  attr_reader :host, :hardware_ethernet, :fix_address
  
  def initialize(host, hardware_ethernet, fix_address)
    @host = host
    @hardware_ethernet = hardware_ethernet
    @fix_address = fix_address
  end
end