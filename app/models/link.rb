class Link < ApplicationRecord
	belongs_to :user
	has_many :comment1s
end
