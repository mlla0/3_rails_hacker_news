class Comment1 < ApplicationRecord
	belongs_to :user
	belongs_to :link
	has_many :comment2s
end
