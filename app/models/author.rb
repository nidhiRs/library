class Author < ApplicationRecord
  has_and_belongs_to_many :books

  def full_name
    ([first_name, last_name] - ['']).compact.join(' ')
  end
end
