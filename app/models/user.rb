# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  username      :string(255)
#  fullname      :string(255)
#  password_hash :string(255)
#  password_salt :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ActiveRecord::Base
  has_many :todo_lists
end
