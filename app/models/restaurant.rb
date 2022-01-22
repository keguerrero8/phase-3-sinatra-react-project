class Restaurant < ActiveRecord::Base
has_many :likes
has_many :users, through: :likes

  
def matched
   (self.likes.count >= 2) ? true : false

  end

end