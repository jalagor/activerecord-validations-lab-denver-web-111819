class Post < ActiveRecord::Base
  
  ActiveModel::Validations
  validates_with PostValidator
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  # validate :title_must_be_clickbaity
   
  # def title_must_be_clickbaity

  #   if ([title] =~ ["Won't Believe", "Secret", "Top [number]", "Guess"]).none?
  #     errors.add(:title, "must be clickbaity")
  #   end
  # end
  
end
