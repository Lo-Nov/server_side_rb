class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :publisher, :publish_date, :page_count

  # has_one :author
  belongs_to :author
end
