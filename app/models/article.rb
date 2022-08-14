class Article < ApplicationRecord
	include Visible
	
	
	has_many :comments, dependent: :destroy
	
	validates :titlr, presence: true
	validates :body, presence: true, length: {minimum: 10}
	
	
end
