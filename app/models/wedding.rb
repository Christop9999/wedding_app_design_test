class Wedding < ActiveRecord::Base
	has_many :venues
	has_many :pins
	has_many :galleries
	belongs_to :user
	#belongs_to :owner, class_name: "User", foreign_key: "user_id"
	#has_many :guests, class_name: "User", foreign_key: "guest_id"
	has_many :wedding_guests
	has_many :guests, through: :wedding_guests
	has_one :content
	has_many :guest_lists
	

	#belongs_to :admin
	

	#accepts_nested_attributes_for :content
	


	validates :name, presence: true,
				     length: {minimum: 3}

	def self.search(query)
		where("name like ?", "%#{query}%") 
	end


	def self.guests(wedding, user)
		wedding.wedding_guests.where(user_id: user)
	end





	

		


end
