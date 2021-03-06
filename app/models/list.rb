class List < ActiveRecord::Base
  belongs_to :created_by_user, :class_name => 'User'
  has_many :todos, :dependent => :destroy
  has_and_belongs_to_many :users

  validates :name, :presence => true

  def is_default?
    name == "#{created_by_user.email}'s list"
  end
end
