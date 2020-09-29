class AuthorSerializer < ActiveModel::Serializer
  attributes :full_name, :books
end
