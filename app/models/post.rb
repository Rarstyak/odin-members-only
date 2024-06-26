# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title,   presence: true, uniqueness: true
  validates :body,    presence: true
  validates :user_id, presence: true

  belongs_to :user
end
