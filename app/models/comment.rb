class Comment < ApplicationRecord
  belongs_to :theme

  def self.search(search)
  	if search
  		Comment.where(['body LIKE ?', "%#{search}%"])
  	else
  		Comment.all
  	end
  end

end
