class Entry < ActiveRecord::Base
    Validates :title, :presence: true, length: { maximum: 64}
    Validates :content, :presence: true, length: { maximum: 255 }
end
