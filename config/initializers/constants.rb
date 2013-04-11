QUESTION_TYPES = ["logical_reasoning", "analytical_reasoning", "reading_comprehension"].freeze

FIRST_VOCABULARY_WORD_ID = VocabularyWord.find(:first).id
LAST_VOCABULARY_WORD_ID = VocabularyWord.find(:last).id
VOCABULARY_WORD_IDS = []
(LAST_VOCABULARY_WORD_ID - FIRST_VOCABULARY_WORD_ID + 1).times do |x|
  VOCABULARY_WORD_IDS << x + FIRST_VOCABULARY_WORD_ID
end

WORDS_PER_DAY = 10
