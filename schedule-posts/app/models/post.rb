class Post < ApplicationRecord
    scope :actives, -> {where(status: true)}

    scope :hidden, -> {where(status: false)}

    def self.update_status
        
        posts = self.where("schedule <= ?", Date.today.to_datetime)
        
        posts.each do |post|
            #puts "atualizando o post #{post.title}"
            post.update_attribute(:status, true)
        end if posts.count > 0
        
    end
end
