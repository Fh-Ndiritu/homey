class Status < ApplicationRecord


    scope :active, ->{ where(active: true)}
end
