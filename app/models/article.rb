class Article < ApplicationRecord
    belongs_to :user

    def log_destroy_action
        puts "====== Article Destroyed ======="
    end
end
