# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord
  validate :not_duplicate_response
  
  belongs_to :answer_choice,
  primary_key: :id,
  foreign_key: :answer_choice_id,
  class_name: :AnswerChoice
  
  belongs_to :respondent,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User
  
  has_one :question,
  through: :answer_choice,
  source: :question
  
  def sibling_responses
    question.responses.where.not(id: self.id)
  end
  
  def respondent_already_answered?
    sibling_responses.exists?(user_id: self.user_id)  
  end
  
  def author_responded_to_own_poll?
    return true unless self.question.poll.nil?
    false
  end
  
  private
  def not_duplicate_response
    errors[:respondent] << "already answered" if respondent_already_answered?
  end
end
