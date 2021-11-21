FactoryBot.define do
  factory :result do
    name { 'テスト太郎' }
    reason_id { rand(1..39) }
  end
end
