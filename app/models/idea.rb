class Idea < ActiveRecord::Base

  validates :title, presence: true
  has_many :links

end
