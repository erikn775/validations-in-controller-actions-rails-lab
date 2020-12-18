class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, inclusion: {in: %w(fiction non-fiction)
        message: " is not included in the list"}
    validates :content, length: {minimum: 100}
end
