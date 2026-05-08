class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status
  belongs_to :category
  belongs_to :user
  has_one_attached :image

  validates :name, presence: true
  validates :due_date, presence: true
  validate :date_cannot_be_in_the_past

  def urgent?
    self.due_date.present? && self.due_date <= Date.current
  end

  def days_left
    return nil if self.due_date.nil?
    (self.due_date - Date.current).to_i
  end
  
   private
  def date_cannot_be_in_the_past
    if due_date.present?
      if due_date < Date.current
        errors.add(:due_date,"は今日以降の日付を指定してください" )
      end
    end
  end
end