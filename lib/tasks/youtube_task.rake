namespace :youtube_task do
  desc 'YouTube APiを使って動画を取得し保存'
  task youtube_video_save: :environment do
    require 'google/apis/youtube_v3'
    youtube = Google::Apis::YoutubeV3::YouTubeService.new
    youtube.key = Rails.application.credentials.youtube[:youtube_api_key]

    keywords = %w[筋トレ+初心者 筋トレ+女子 IFBB+PRO]
    keywords.each do |keyword|
      options = { channel_type: 'any', q: keyword, max_results: 15, published_after: '2020-01-01T00:00:00Z', type: 'video', video_duration: 'medium' }

      response = youtube.list_searches(:snippet, options)
      response.items.each do |item|
        video_id = item.id.video_id
        video = "https://www.youtube.com/embed/#{video_id}"
        case keyword
        when '筋トレ+初心者'
          category = 'man'
        when '筋トレ+女子'
          category = 'woman'
        when 'IFBB+PRO'
          category = 'other'
        end

        exercise = Exercise.new(video: video, category: category)
        begin
          exercise.save
        rescue Google::APIClient::TransmissionError => e
          puts e.result.body
        end
      end
    end
  end
end
