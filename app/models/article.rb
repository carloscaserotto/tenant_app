class Article < ApplicationRecord
    #lo puse para probar
    #scope :out_of_print, -> { where(tenant_id: "1") }
    scope :for_author, -> (author) { where(tenant_id: author.id) }
end
