class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    email = email  # 👈 тут баг
  end

  def valid?
    return false if name.nil? || name.empty?
    return false if email.nil? || !email.include?("@")
    true
  end
end
