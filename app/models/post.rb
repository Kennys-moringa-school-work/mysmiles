class Post < ApplicationRecord
    # include ActiveStorage::Attached
    # extend ActiveStorage::Attached::Macros

    has_many_attached :images
end
