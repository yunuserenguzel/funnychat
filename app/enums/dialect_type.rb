class DialectType
  def self.yoda; :yoda end
  def self.pirate; :pirate end
  def self.valley_girl; :valley_girl end
  @@types = [:yoda,:pirate,:valley_girl]
  def self.method_missing(m,*args, &block)
    if @@types.include?(m)
      return m
    else
      throw "#{m} is not defined"
    end
  end

  def self.all
    @@types
  end

end