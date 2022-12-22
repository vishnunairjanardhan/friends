class Friend < ApplicationRecord
	has_many :comments
	validates :first_name ,presence: true
	validates :last_name , presence: true
	validates :email,presence: true
	validates :phone,presence:true
	validates :facebook, presence:true
end
