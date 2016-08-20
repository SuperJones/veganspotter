class Restaurant < ActiveRecord::Base
  has_many :foods, dependent: :destroy

  searchable do
    text :name, :tag, :ingredients
  end
end
