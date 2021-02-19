# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :author
  has_many :comments

  ransack_alias :authorname, :author_first_name_or_author_last_name

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
