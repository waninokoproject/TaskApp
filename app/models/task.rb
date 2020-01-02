class Task < ApplicationRecord
  validates :name, presence: true, length: {maximum: 30}
  validate :validate_name_not_including_comma

  private

  def validate_name_not_including_comma
    if name&.include?(',')
      errors.add(:name, 'Commas cannot be added to task names.')
    end
  end
end
