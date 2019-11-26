# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user, class_name: 'user'
end
