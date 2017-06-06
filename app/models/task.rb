class Task
  include Mongoid::Document
  include Mongoid::Timestamps
  include AASM
  searchkick
  self.reindex

  validates :title, :note, :completed, presence: true
  belongs_to :user
  field :title, type: String
  field :note, type: String
  field :completed, type: Date
  field :aasm_state

  aasm whiny_transitions: false do
    state :incomplete, initial: true
    state :completed

    event :complete do
      transitions from: :incomplete, to: :completed
    end
  end
end
