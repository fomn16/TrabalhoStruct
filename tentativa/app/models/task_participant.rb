class TaskParticipant < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :task
end
