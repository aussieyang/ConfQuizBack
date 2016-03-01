class Question < ActiveRecord::Base
  validates_uniqueness_of :content
  belongs_to :quiz
end
