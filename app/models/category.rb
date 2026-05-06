class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '役所・公的手続き' },
    { id: 2, name: 'ライフライン' },
    { id: 3, name: '通信・ネット' },
    { id: 4, name: '各種契約・変更' },
    { id: 5, name: '住まい・生活' },
    { id: 6, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :tasks
end