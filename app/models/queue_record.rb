class QueueRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :queues_primary, reading: :queues_primary }
end