users = [
	{ username: "mashrur", password: "password1" },
	{ username: "jack", password: "password2" },
	{ username: "arya", password: "password3" },
	{ username: "jonshow", password: "password4" },
	{ username: "heisenberg", password: "password5" },
]

def auth_user(usernameEntry, passwordEntry, list_of_users)
	#authenticating
	list_of_users.each do |user_record|
		if user_record[:username] == usernameEntry && user_record[:password] == passwordEntry
			return user_record
		end
	end
	"Credentials were not correct"
end


puts "Welcome to the authenticator"
25.times { print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"



attempts = 1
while attempts < 4
	print "Username: "
	usernameEntry = gets.chomp
	print "Password: "
	passwordEntry = gets.chomp
	authentication = auth_user(usernameEntry, passwordEntry, users)
	puts authentication
	puts "Press n to quit or any other key to continue: "
	input = gets.chomp.downcase
	break if input == "n"
	attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4

