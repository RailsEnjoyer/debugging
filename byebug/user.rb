require "byebug"

class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def valid?
    return false if name.nil? || name.empty?
    return false if email.nil? || !email.include?("@")
    true
  end
end