require_relative 'user'

def register_user(params)
  puts "Params: #{params.inspect}"

  user = User.new(params[:name], params[:email])
  puts "Created user: #{user.inspect}"
  
  unless user.valid?
    puts "User is invalid!"
    return
  end

  puts "User registered successfully!"
end

register_user({ name: "Bogdan", email: "bogdan@example.com" })
