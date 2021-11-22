class Radio < ApplicationRecord
    def self.search(keyword)
    where(["title like? OR text like?", "%#{keyword}%", "%#{keyword}%"])
    end
end
