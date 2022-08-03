class User < ApplicationRecord
    has_many :posts, foreign_key: 'author_id', dependent: :destroy
    has_many :comments, foreign_key: 'author_id', dependent: :destroy
    has_many :likes, foreign_key: 'author_id', dependent: :destroy

    validates :name, presence: true
    validates_numericality_of :posts_counter, only_integer: true, greater_than_or_equal_to: 0

end
