class Schedule < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date
  validates :memo, length: { maximum: 500 }
end

def end_date_after_start_date
  if start_date.present? && end_date.present? && start_date > end_date
    errors.add(:end_date, "は開始日以降の日付で選択してください。")
  end
end
