class Quiz < ActiveRecord::Base
    belongs_to:user
    belongs_to:unit
    belongs_to:language
    belongs_to:speciifc
end
