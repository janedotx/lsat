class User < ActiveRecord::Base
  has_one :lessons_collection
  validates :screen_name, :length => { :mininum => 4, :maximum => 25 }
  # attr_accessible :title, :body
  attr_accessible :screen_name, :email, :password
  has_secure_password

  # return false if failed to authenticate, true if it did
  # succeed in authenticating
  def self.authenticate(screen_name, password)
    find_by_screen_name(screen_name).try(:authenticate, password)
  end

  def viewed_question?(id)
    QuestionView.where("user_id = ? AND question_id = ?", 1, 2).present?
  end
end
