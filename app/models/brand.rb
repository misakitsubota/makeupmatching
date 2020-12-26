class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'キャンメイク' },
    { id: 3, name: 'ヴィセ' },
    { id: 4, name: 'メイベリン' },
    { id: 5, name: 'ケイト' },
    { id: 6, name: 'マキアージュ' },
    { id: 7, name: 'MISSHA' },
    { id: 8, name: 'LANCOM' },
    { id: 9, name: 'ESTEE LAUDER' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
end
