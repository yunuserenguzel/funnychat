class DialectTranslator
  def self.translators_table
    {
      DialectType::Yoda => YodaTranslator,
      DialectType::Pirate => PirateTranslator,
      DialectType::ValleyGirl => ValleyGirlTranslator
    }
  end
  def self.translate(dialect_type,text)
    translator = translators_table[dialect_type].new(text)
    translator.translate
  end
end