class DialectTranslatorBase
  attr_accessor :text, :host

  def initialize(text)
    self.text = text
  end

  def translate
    response = request
    parse response
  end

  def request
    raise NotImplementedError
  end

  def parse(raw_text)
    raise NotImplementedError
  end

end