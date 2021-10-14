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
    { name: 'ハゲるのが怖い', kind: 0 },
    { name: '体重を増やしたい', kind: 0 },
    { name: '座りっぱなしで腰が痛い', kind: 0 },
    { name: '癌や生活習慣病など病気になるのが怖い', kind: 0 },
    { name: '癌や生活習慣病など病気になるのが怖い', kind: 0 },
    { name: '間食をよく食べる', kind: 0 },
    { name: '痩せない', kind: 0 },
    { name: '肌トラブル', kind: 0 },
    { name: '冷え性', kind: 0 },
    { name: '眠れない、起きれない', kind: 0 },
    { name: '→その蓄えたエネルギーで筋トレ！', kind: 0 },
    { name: 'ビール腹問題', kind: 0 },

    # 将来
    { name: '就職・転職できるか不安', kind: 1 },
    { name: '集中力が続かない', kind: 1 },
    { name: '今ニートでこの先が不安...', kind: 1 },
    { name: '仕事を失うかもしれない', kind: 1 },
    { name: '上司に評価してもらえない', kind: 1 },

    # 人間関係
    { name: '初対面で話せない', kind: 2 },
    { name: '社会人になって友達と疎遠になってしまう', kind: 2 },
    { name: '恋人と別れた', kind: 2 },
    { name: 'ブランド物ばかり買って周りの評判が悪くなった', kind: 2 },
    { name: '承認欲求が捨てられない', kind: 2 },
    { name: 'コミュ障で話せない', kind: 2 },
    { name: '自信が持てない', kind: 2 },
    { name: 'メンヘラのかわしかた', kind: 2 },
    { name: '上司が怖い', kind: 2 },
    { name: '英語が苦手で話せない', kind: 2 },
    { name: '好きな人を振り向かせたい', kind: 2 },
    { name: '友達を増やしたい', kind: 2 },
    { name: '親とすぐ喧嘩になってしまう', kind: 2 },
    { name: '後輩から舐められる', kind: 2 },
    { name: '他人に合わせるのが苦手', kind: 2 },

    # お金
    { name: '酒・ギャンブルがやめれらない', kind: 3 },
    { name: '浪費してしまう', kind: 3 },
    { name: 'お金が減っていくことへの不安', kind: 3 },
    { name: '貸したお金が返ってこない', kind: 3 },
    { name: '貯金ができない', kind: 3 },
    { name: 'コンビニでお金を使いすぎてしまう', kind: 3 },
    { name: '長く働いても給料が上がらない', kind: 3 }
  ]
)

# 解決策の理由
Reason.create(
  [
    # 健康
    { name: 'ハゲを上回る魅力的な身体を作ればいい！', trouble_id: 1 },
    { name: '筋トレして食べて寝る！これだけ！', trouble_id: 2 },
    { name: '合間に筋トレ。運動不足解消！', trouble_id: 3 },
    { name: '筋トレには病気の予防効果、死亡率を下げる効果がある！', trouble_id: 4 },
    { name: '筋トレすれば記憶力が上がる！', trouble_id: 5 },
    { name: '手軽で安価、腹持ちが良くて、長期保存可能でしかも美味であるプロテインがおすすめ！', trouble_id: 6 },
    { name: '筋肉がつくと代謝が上がって脂肪が落ちて、リバウンドしづらい身体になる！', trouble_id: 7 },
    { name: '成長ホルモンの分泌量が増え、血流と睡眠の質が向上し、ストレス解消になって肌環境が良くなる、やらない理由はない！', trouble_id: 8 },
    { name: '血流の循環を良くするためには黙ってスクワット！', trouble_id: 9 },
    { name: '筋トレすると睡眠の質が65%⤴︎、日中の眠気65%⤵︎、筋トレするしかないよね？', trouble_id: 10 },
    { name: 'その蓄えたエネルギーで筋トレ！', trouble_id: 11 },
    { name: 'ビールじゃなくてジム終わりのプロテインで乾杯！', trouble_id: 12 },

    # 将来
    { name: 'アメリカでは筋トレしてると自己管理ができるという理由で採用されやすい！', trouble_id: 13 },
    { name: '筋トレをすることで脳が活性化されて集中力アップ！', trouble_id: 14 },
    { name: '筋トレすると、日々の充実感が得られる、自分を律することができる、自己肯定感が強くなる、筋トレ最高！', trouble_id: 15 },
    { name: '仕事はなくなっても筋肉はなくならない', trouble_id: 16 },
    { name: '自分のこと理解できないプロテインくらいに思っとけばいい！', trouble_id: 17 },

    # 人間関係
    { name: '「いい体してますね！筋トレしてるんですか？」これでOK！', trouble_id: 18 },
    { name: 'いつかは別れの時が来る...でも筋肉はいつもあなたと一緒だ！さあ、筋トレしよう！', trouble_id: 19 },
    { name: '筋肉とダンベルはいつもそばにいる！', trouble_id: 20 },
    { name: 'ブランド物より、自分で作り上げた体の方が何倍も価値が高い！', trouble_id: 21 },
    { name: ' 筋トレをすると日々変わる体重体型などを数値で見て成長を実感でき、自分で自分を評価するようになる！', trouble_id: 22 },
    { name: '人はほぼ水分とタンパク質でできている。プロテインと話していると思え！', trouble_id: 23 },
    { name: '筋トレをすると身体が変わって、自己肯定感や継続力など色んなものが身について自信が持てるようになる！', trouble_id: 24 },
    { name: '「ごめん、今からジム行ってくる！」で逃げる！', trouble_id: 25 },
    { name: '人はほぼ水分とタンパク質でできている。喋るプロテインだ！', trouble_id: 26 },
    { name: '筋トレは世界共通言語！「Do you want to hit the gym together with me?」でOK！', trouble_id: 27 },
    { name: '筋トレして魅力的な身体になれば振り向いてくれる！', trouble_id: 28 },
    { name: 'トレする人みんな友達！ジム行こう！', trouble_id: 29 },
    { name: '他人は変えられないけど、自分の身体は思うように変えられる！', trouble_id: 30 },
    { name: '筋トレして見た目で圧倒すれば誰も何も言ってこない！', trouble_id: 31 },
    { name: '筋肉とのコミュニケーションは都合が良い時に取れる！', trouble_id: 32 },
    { name: '酒やギャンブルは一瞬しか快楽を得られないが、筋トレは快楽がずっと続くから筋トレ中毒がいいぞ！', trouble_id: 33 },
    { name: '自己投資しよう。自分の身体は一生ものだ！', trouble_id: 34 },
    { name: '筋肉は身に付けてしまえば減ることはない！', trouble_id: 35 },
    { name: '自分の体にお金を使えば、筋肉として返ってくる！', trouble_id: 36 },
    { name: '貯金じゃなくて貯筋！', trouble_id: 37 },
    { name: 'コンビニ行くならザバスのプロテイン買ってジム行け！', trouble_id: 38 },
    { name: '筋肉なら筋トレをやった分だけ増える！', trouble_id: 39 }
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

