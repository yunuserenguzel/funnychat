class User
  attr_accessor :name,:id,:dialect_type
  def initialize(args)
    self.id = args[:id]
    self.name = args[:name]
    self.dialect_type = args[:dialect_type]
  end

  def ==(other)
    self.id == other.id
  end

  def user_identifier
    self.id
  end
end