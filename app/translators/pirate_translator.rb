class PirateTranslator < DialectTranslatorBase
  def initialize(text)
    super text
    self.host = 'http://isithackday.com/arrpi.php'
  end
  def request
    RestClient.get host,{params:{text:text}} do |response, request, result|
      return response
    end
  end
  def parse(raw_text)
    raw_text
  end

end