class Product < ApplicationRecord
    def has_photo?
        File.exists? photo_filename
    end

    PHOTO_STORE = File.join Rails.root, 'public', 'photo_store'
    def photo_filename
        File.join PHOTO_STORE, "#{id}.#{extension}"
    end

    def photo_path
        "/photo_store/#{id}.#{extension}"
    end
end