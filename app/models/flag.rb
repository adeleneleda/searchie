class Flag
  HOST = 'https://flagcdn.com'
  SIZE = 'h20'

  def self.get(country_name)
    if code = COUNTRY_CODES[country_name]
      [HOST, SIZE, "#{code.downcase}.png"].join('/')
    end
  end
end