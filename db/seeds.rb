# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 悩み
Trouble.create(
  [
    # 健康
    { name: '痩せない',          kind: 0 },
    { name: '肌荒れ',            kind: 0 },
    # 将来
    { name: '作業に集中できない',  kind: 1 },
    { name: '少子化が不安',       kind: 1 },
    # 人間関係
    { name: '初対面で話せない',    kind: 2 },
    { name: '上司が怖い',         kind: 2 },
    # お金
    { name: 'お金がない',         kind: 3 },
    { name: '給料が上がらない',    kind: 3 }
  ]
)


# 解決策の理由
Reason.create(
  [
    { name: '痩せないを選択しました',         trouble_id: 1 },
    { name: '肌荒れを選択しました',           trouble_id: 2 },
    { name: '作業の集中できないを選択しました', trouble_id: 3 },
    { name: '少子化が不安を選択しました',      trouble_id: 4 },
    { name: '初対面で話せないを選択しました',   trouble_id: 5 },
    { name: '上司が怖いを選択しました',        trouble_id: 6 },
    { name: 'お金がないを選択しました',        trouble_id: 7 },
    { name: '給料が上がらないを選択しました',   trouble_id: 8 }
  ]
)

# 筋トレ名言
WiseSaying.create(
  [
    { name: '筋肉がNOと叫んだら、私はYES！と答える。',                           people: 'アーノルド・シュワルツェネッガー' },
    { name: 'おしゃべりなら後にしてくれ。パンプが冷めちまう',                      people: 'アーノルド・シュワルツェネッガー' },
    { name: '単純さ。揺れるものは全て脂肪だ。',                                  people: 'アーノルド・シュワルツェネッガー' },
    { name: '数字が少しくらい良くなっただけで、満足してはいけない。頂点を目指すのだ。', people: 'アーノルド・シュワルツェネッガー' },
    { name: '利益だけを考える女々しい男になるな。',                               people: 'アーノルド・シュワルツェネッガー' }
  ]
)

