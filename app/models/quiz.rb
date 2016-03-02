class Quiz < ActiveRecord::Base
  has_many :questions
  validates_uniqueness_of :speaker
end
