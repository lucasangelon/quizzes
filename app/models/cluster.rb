class Cluster < ActiveRecord::Base
    has_and_belongs_to_many :units
end
