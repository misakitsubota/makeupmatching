class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '下地' },
    { id: 3, name: 'ファンデーション' },
  ]

  include ActiveHash::Associations
  has_many :items
end
  

