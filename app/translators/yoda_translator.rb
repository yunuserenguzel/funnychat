class YodaTranslator < DialectTranslatorBase
  def initialize(text)
    super text
    self.host = 'http://www.yodaspeak.co.uk/index.php'
  end

  def request
    RestClient.post host,{'YodaMe' => text} do |response, request, result|
      return response
    end
  end
  def parse(raw_text)
    result = raw_text.match /<textarea style='margin-top:0px; padding:5px 1px 5px 45px; width:250px;' name='YodaSpeak' rows='15' cols='30' readonly>([^<]*)<\/textarea>/
    result[1] if result
  end

end