require 'byebug'

class User
  attr_reader :name, :email

  def initialize(name:, email:)
    @name = name.strip
    @email = email.strip.downcase
  end
  
  def valid?
    return false if name.empty?
    return false if !email.include?("@") || !email.end_with?(".com")
    true
  end

  def to_s
    "User: #{name} <#{email}>"
  end
end

def register_user(params)
  puts "Incoming params: #{params.inspect}"

  user = User.new(
    name: params["name"],
    email: params["email"]
  )

  puts user.to_s

  if user.valid?
    puts "✅ Registration successful!"
  else
    puts "❌ Registration failed!"
  end
end

register_user({
  "name" => "   Bogdan   ",
  "email" => "BOGDAN@EXAMPLE.COM"
})
