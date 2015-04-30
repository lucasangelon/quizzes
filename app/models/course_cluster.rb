class CourseCluster < ActiveRecord::Base
    belongs_to:cluster
    belongs_to:course
end
