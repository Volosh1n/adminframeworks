FactoryBot.define do
  factory :post do
    title { FFaker::Lorem.unique.words.join }
    body { FFaker::Lorem.sentence.truncate(30) }
  end
end
