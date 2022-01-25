class User < ActiveRecord::Base

  has_many :likes
    has_many :restaurants, through: :likes
    has_many :conversations
    has_many :messages, through: :conversations

  def authenticate
  end



  end