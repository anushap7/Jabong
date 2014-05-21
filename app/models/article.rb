class Article < ActiveRecord::Base
		validates :name, presence: true

	validates :item, presence: true
		validates :amount, presence: true

     def self.search(search)
 		if search
    		self.where("name LIKE ? ", "%#{search}%")
    	else
    		self.all
  		end
	end
               
end
