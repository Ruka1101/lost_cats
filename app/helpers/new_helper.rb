module NewHelper
    def content_placeholder
        <<-"EOS".strip_heredoc
            飼い主さんが分かるように、できる限り詳細な情報を書いてください。
            
            例
            性別：オス
            特徴：かぎしっぽ、背中の一部に毛が生えていません。
            　　　自宅で保護しています。
        EOS
    end     
end