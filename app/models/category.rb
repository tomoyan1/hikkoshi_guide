class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '役所・公的手続き', class_name: 'category-admin' },
    { id: 2, name: 'ライフライン', class_name: 'category-life' },
    { id: 3, name: '通信・ネット', class_name: 'category-net' },
    { id: 4, name: '各種契約・変更', class_name: 'category-contract' },
    { id: 5, name: '住まい・梱包', class_name: 'category-living' },
    { id: 6, name: '買い物・その他', class_name: 'category-other' },
    { id: 7, name: '新生活・買い物リスト', class_name: 'category-newlife' }
  ]
  include ActiveHash::Associations
  has_many :tasks
end