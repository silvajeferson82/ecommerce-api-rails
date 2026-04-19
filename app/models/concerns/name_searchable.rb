module NameSearchable
  extend ActiveSupport::Concern

  included do
    scope :like, -> (field, value) do
      self.where("#{field} ILIKE ?", "%#{value}%")
    end

    scope :search_by_name, -> (value) do
      self.where("name ILIKE ?", "%#{value}%")
    end
  end
end