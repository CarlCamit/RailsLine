class AvatarImageUploader < Shrine
    include ImageProcessing::MiniMagick

    plugin :processing 
    plugin :activerecord
    plugin :determine_mime_type
    plugin :logging, logger: Rails.logger
    plugin :remove_attachment
    plugin :store_dimensions
    plugin :validation_helpers
    plugin :versions, names: [:original, :large, :medium, :thumb, :small]

    Attacher.validate do
        validate_max_size 2.megabytes, message: 'is too large (max is 2 MB)'
        validate_mime_type_inclusion ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
    end
  

    
    def process(io, context)
      if context[:phase] == :store
      size_700 = resize_to_limit!(io.download, 700, 700)
      size_200 = resize_to_limit(size_700,    200, 200)
      size_100 = resize_to_limit(size_500,    100, 100)
      thumb = resize_to_limit(size_300, 50, 50)

        { original: io, large: size_700, medium: size_200, small: size_100, thumb: thumb }
        end
    end
end