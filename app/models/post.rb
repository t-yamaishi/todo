class Post < ApplicationRecord
  belongs_to :user
  validates :content, {presence: true}
  enum status: {未実施:0, 実施:1}

  def self.deadline_check
    Post.all.each do |post|
      if post.deadline < Time.now #|| post.status = 0
        ContactMailer.contact_mail(post).deliver
      end
    end
  end
end
