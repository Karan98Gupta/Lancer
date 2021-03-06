class Gig < ActiveRecord::Base
  has_many :proposals
  belongs_to :user
  belongs_to :category, required: false
  has_many :abilities
  has_many :skills, through: :abilities

end
