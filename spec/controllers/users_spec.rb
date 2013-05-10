require 'spec_helper'

describe UsersController do
	let (:users) {
		UsersController.new
	}	

	let (:user_1) {
		User.create(
			name: "J",
			email: "j@y.com",
			password: "yes"
			)
	}


	let (:user_2) {
		User.create(
			name: "P",
			email: "P@y.com",
			password: "oui"
			)
	}

	let (:user_3) {
		User.create(
			name: "R",
			email: "r@y.com",
			password: "yo"
			)
	}

# describe ".index"  do
# 	it "should set array of users in @users" do
# 		users.index
# 		expect(users.users).to match_array [user_1, user_2, user_3]
# 	end
# end
end
