class Currency < ActiveRecord::Base
  belongs_to :country

  validates :name, presence: true, uniqueness: true

  delegate :name, to: :country, prefix: true, allow_nil: true

  def collected?
    country.visited?
  end
end
