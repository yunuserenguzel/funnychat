class DialectTranslator
  def self.translators_table
    {
      DialectType::Yoda => YodaTranslator,
      DialectType::Pirate => PirateTranslator,
      DialectType::ValleyGirl => ValleyGirlTranslator
    }
  end
  def self.translate(dialect_type,text)
    translator_class = translators_table[dialect_type]
    if !translator_class
      raise ArgumentError, 'dialect_type must be a DialectType'
    end
    translator = translator_class.new(text)
    translator.translate
  end
end