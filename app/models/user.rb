class User < ApplicationRecord
	validates_presence_of :name, :email, :zip_code
end
