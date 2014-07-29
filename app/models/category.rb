class Category < ActiveRecord::Base
  belongs_to :categorization
  has_many :kitten
  validates :name, presence: true, uniqueness: {case_sensitive: false}
end