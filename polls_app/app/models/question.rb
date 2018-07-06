# == Schema Information
#
# Table name: questions
#
#  id         :bigint(8)        not null, primary key
#  text       :string
#  poll_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord
  has_many :answer_choices,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :AnswerChoice
  
  belongs_to :poll,
  primary_key: :id,
  foreign_key: :poll_id,
  class_name: :Poll
  
  has_many :responses,
  through: :answer_choices,
  source: :responses
  
  def results
    count = Hash.new(0)
    answers = answer_choices
    answers.each do |answer|
      count[answer.text] += answer.responses.count
    end
    count
  end
  
  def better_results
    count = Hash.new(0)
    answer_choices.includes(:responses).each do |answer|
      count[answer.text] += answer.responses.length
    end
    count
  end
end
