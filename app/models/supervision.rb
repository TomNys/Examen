class Supervision < ActiveRecord::Base
  belongs_to :classroom
  belongs_to :exam_period
  belongs_to :supervisor, :foreign_key => "supervisor_exams_id"
end
