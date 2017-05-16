class Task
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :note, type: String
  field :completed, type: Date
end
