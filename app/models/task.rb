class Task < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :title, :description, :date, presence: true
end
