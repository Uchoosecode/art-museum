module ArtworksHelper
    def gallery_id_field(artwork)
        if artwork.gallery.nil?
          select_tag "artwork[gallery_id]", options_from_collection_for_select(Gallery.all, :id, :title)
        else
          hidden_field_tag "artwork[gallery_id]", artwork.gallery_id
        end
      end
end
