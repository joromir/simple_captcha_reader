module SCR
  class FetchCaptcha
    attr_reader :url, :regex_html

    def initialize(url: nil, regex_html: nil)
      @url        = url
      @regex_html = regex_html
    end

    def download
    end
  end
end
