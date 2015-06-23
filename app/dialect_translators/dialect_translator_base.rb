class DialectTranslatorBase
  attr_accessor
  def initialize(text)
    self.text = text
  end

  def translate
    raise NotImplementedError
  end
end