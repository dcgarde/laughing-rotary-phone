class Team < ApplicationRecord
    has_many :users
    has_many :projects, dependent :destroy

    accept_nested_attributes_for :user, allow_destroy: true
end
