class ValleyGirlTranslator < DialectTranslatorBase

  def initialize(text)
    super text
    self.host = 'http://www.degraeve.com/cgi-bin/babel.cgi'
  end

  def request
    RestClient.get self.host, {params:{d:'valley',w:text}} do |response, request, result|
      return response
    end
  end

  def parse(raw_text)
    result = raw_text.match /<p>\n([^<]*)<\/p>/
    result[1] if result
  end

end