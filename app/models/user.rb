# frozen_string_literal: true

class User < ApplicationRecord
  has_many :links
  has_many :comment1s
  has_many :comment2s
end
