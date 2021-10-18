namespace :youtube_task do
  desc 'YouTube APiを使って動画を取得し保存'
  task youtube_video_save: :environment do

    # YoutubeV3を使用するために呼び出す
    require 'google/apis/youtube_v3'

    # Google::Apis::YoutubeV3::YouTubeServiceはGoogle::Apis::Core::BaseServiceを継承している
    youtube = Google::Apis::YoutubeV3::YouTubeService.new
    # credentialsに設定したAPIkeyを呼び出す
    youtube.key = Rails.application.credentials.youtube[:youtube_api_key]

    # 検索ワード
    # 最後のワードだけを使って検索される
    keywords = %w[筋トレ男性 筋トレ女子 筋トレ+面白]

    # オプションの指定(検索ワード、公開日、取得数)
    keywords.each do |keyword|
      options = {
        channel_type: 'any',
        # 検索ワード(上記で定義したもの)
        q: keyword,
        # 取得件数
        max_results: 15,
        published_after: '2020-01-01T00:00:00Z',
        type: 'video',
        video_duration: 'medium'
      }

      # list_searchesメソッドを使って検索し、responseに格納
      response = youtube.list_searches(:snippet, options)
      # each文で一つずつ取り出す
      response.items.each do |item|
        video_id = item.id.video_id
        # 埋め込み用
        video = "https://www.youtube.com/embed/#{video_id}"
        # カテゴリーの付与
        if keyword == '筋トレ男性'
          category = 'man'
        elsif keyword == '筋トレ女子'
          category = 'woman'
        else
          category = 'other'
        end

        exercise = Exercise.new(video: video, category: category)
        # 保存に失敗したら止めて知らせる
        begin
          exercise.save
        rescue Google::APIClient::TransmissionError => e
          puts e.result.body
        end
      end
    end
  end
end
