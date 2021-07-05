class Book < ApplicationRecord
	belongs_to :user

	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}

   def self.search_for(content, method)
    if method == 'perfect'
     @record = Book.where(title: "#{content}")
    elsif method == 'forward'
     @record =  Book.where('title LIKE ?', "#{content}%")
    elsif method == 'backward'
     @record =  Book.where('title LIKE ?', "%#{content}" )
    else
     @record =  Book.where('title LIKE ?', "%#{content}%")
    end
  end
end
