# frozen_string_literal: true

class Comment2 < ApplicationRecord
  belongs_to :user
  belongs_to :comment1
end
