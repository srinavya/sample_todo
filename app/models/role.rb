class Role
  include Mongoid::Document
  extend Enumerize

  # associations
  has_and_belongs_to_many :users

  field :n, as: :name, type: String

  # Enumerize
  enumerize :name, in: [:guest, :registered, :admin]

  # validations
  validates :name, presence: true, uniqueness: true
end
