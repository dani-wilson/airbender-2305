class BenderService
  def self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.fire_nation
    get_url("/api/v1/characters?affiliation=FIRE+NATION")
  end
end