class PostValidator < ActiveModel::Validator
  
  def validate(record)
    unless record.title =~ ("Won't Believe", "Secret", "Top [number]", "Guess")


end