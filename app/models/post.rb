class Post < ApplicationRecord
    belongs_to :author, class_name: 'User'
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy

    validates :title, length: {in: 1..250}, presence: true, allow_blank: false
    validates_numericality_of :comments_counter, only_integer: true, greater_than_or_equal_to: 0
    validates_numericality_of :likes_counter, only_integer: true, greater_than_or_equal_to: 0
end
