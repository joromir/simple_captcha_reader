module SCR
  class Reader
    attr_reader :image_path, :reader

    def initialize(image_path:, reader: RTesseract)
      @image_path = image_path
      @reader     = reader.new(image_path, options: :digits)
    end

    def to_s
      reader.to_s
    end
  end
end
