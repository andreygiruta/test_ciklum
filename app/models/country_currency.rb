class CountryCurrency < ActiveRecord::Base
  belongs_to :country
  belongs_to :currency
end
