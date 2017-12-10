class Post < ApplicationRecord
    belongs_to :topic
    belongs_to :user
    has_many :comments, dependent: :destroy

    default_scope { order('created_at DESC') }

    def self.ordered_by_title 
        order('title')
    end

    def self.ordered_by_reverse_created_at
        order('created_at')
    end
    

    validates :title, length: { minimum: 5 }, presence: true
    validates :body, length: { minimum: 20 }, presence: true
    validates :topic, presence: true
    validates :user, presence: true
end
