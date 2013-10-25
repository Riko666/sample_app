# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe User do
	  	before do
			@user = User.new(name: "Example User", email: "user@example.com",password: "foobar", password_confirmation: "foobar")
	￼	end
		subject { @user }
		it { should respond_to(:name) }
		it { should respond_to(:email) }
		it { should respond_to(:password_digest) }
		it { should respond_to(:password) }
		it { should respond_to(:password_confirmation) }

end
