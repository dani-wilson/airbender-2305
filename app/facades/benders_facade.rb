class BendersFacade
  def fire_nation
    BenderService.fire_nation.map do |nation_info|
      Bender.new(nation_info)
      # require 'pry'; binding.pry
    end
  end
  
  def member_count
    BenderService.fire_nation.count
  end
end