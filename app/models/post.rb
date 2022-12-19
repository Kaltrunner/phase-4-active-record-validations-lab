class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

    # validate :clickbait?

    # clickbait_words = [
    #     Won't Believe,
    #         Secret,
    #         Top ,
    #         Guess,
    #             ]

    # def clickbait?
    #     if clickbait_words.none? { |word| word.match title}
    #         errors.add(:title, "must be bait!")
    #     end
    # end

end
