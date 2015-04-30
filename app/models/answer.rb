class Answer < ActiveRecord::Base
    belongs_to:user
    belongs_to:type
    belongs_to:unit
    belongs_to:language
    belongs_to:specific
end
