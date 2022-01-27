class Restaurant < ActiveRecord::Base
has_many :likes
has_many :users, through: :likes

  
def matched
   if self.likes.find_by(user_id: 1) && self.likes.find_by(user_id: 2)
    return true
   end
   false
  end
end