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
@user = User.new(name: "Example User", email: "user@example.com",
￼￼password: "foobar", password confirmation: "foobar")
￼end
subject { @user }
it { should respond to(:name) }
it { should respond to(:email) }
it { should respond to(:password digest) }
it { should respond to(:password) }
it { should respond to(:password confirmation) }

end
