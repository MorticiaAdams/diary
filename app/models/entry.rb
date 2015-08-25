class Entry < ActiveRecord::Base
    validates :title, :presence true,
        length: { maximum: 20 }
    validates :contents, :presence true,
        length: { maximum: 140 }
end
