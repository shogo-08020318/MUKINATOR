module ApplicationHelper
  def page_title(page_title = '')
    base_title = 'MUKINATOR'

    page_title.empty? ? base_title : page_title + ' | ' + base_title
  end

  def default_meta_tags
    {
      site: 'MUKINATOR',
      title: 'この世は筋肉が全て！',
      reverse: true,
      charset: 'utf-8',
      description: '日常生活で生まれる悩みや不安を全て筋トレで解決するアプリ',
      keywords: '筋肉, 筋トレ, ボディメイク, 悩み, 不安',
      canonical: 'https://mukinator.herokuapp.com/',
      separator: '|',
      icon: [
        { href: image_url('favicon.png') },
        { href: image_url('favicon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        # url: 'https://mukinator.herokuapp.com/',
        image: image_url('ogp.png'),
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@takemuu_pote'
      }
    }
  end
end
