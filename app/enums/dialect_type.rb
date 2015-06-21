class DialectType

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