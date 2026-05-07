class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status
  belongs_to :category
  belongs_to :user
  has_one_attached :image

  def urgent?
    self.due_date.present? && self.due_date <= Date.current
  end

  def days_left
    return nil if self.due_date.nil?
    (self.due_date - Date.current).to_i
  end
end