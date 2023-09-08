class Bender
  attr_reader :id,
              :allies,
              :enemies,
              :photo,
              :name,
              :affiliation

  def initialize(nation_info)
    @id = nation_info[:id]
    @allies = nation_info[:allies]
    @enemies = nation_info[:enemies]
    @photo = nation_info[:photoUrl]
    @name = nation_info[:name]
    @affiliation = nation_info[:affiliation]
  end
end