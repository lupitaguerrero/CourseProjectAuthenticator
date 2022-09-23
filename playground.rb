users = [
	{ username: "mashrur", password: "password1" },
	{ username: "jack", password: "password2" },
	{ username: "arya", password: "password3" },
	{ username: "jonshow", password: "password4" },
	{ username: "heisenberg", password: "password5" },
]

puts "Welcome to the authenticator"
25.times { print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"
# puts


attempts = 1
while attempts < 4
	print "Username: "
	usernameEntry = gets.chomp
	print "Password: "
	passwordEntry = gets.chomp

	#authenticate
	users.each do |user|
		if user[:username] == usernameEntry && user[:password] == passwordEntry
			puts user
		else
			puts "Credentials were not correct"
		end
	end



	puts "Press n to quit or any other key to continue: "
	input = gets.chomp.downcase
	break if input == "n"
	attempts += 1
end


# def wrongCredentials
# 	puts "Credentials were not correct"
# 	puts "Press n to quit or any other key to continue: "	
# 	#goes back to take username and password
# end

# def correctCredentials
# 	#prints 	
# end

# "You have exceeded the number of attempts"
