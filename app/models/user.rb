class User < ActiveRecord::Base
  has_one :lessons_collection
  has_many :user_vocabulary_words
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

  def current_lesson
    return nil if lessons_collection.nil?
    Lesson.find(lessons_collection.current_lesson_id)
  end

  def seen_vocabulary_words_ids
    @seen_vocabulary_words_ids ||= user_vocabulary_words.map { |word| word.id }.sort
  end

  def unknown_and_seen_vocabulary_words_ids
    @unknown_and_seen_vocabulary_words_ids ||= user_vocabulary_words.select { |word| !word.knows_definition }.map { |x| x.id }
  end
end
