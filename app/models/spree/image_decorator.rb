Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    mini: '100x100>', # thumbs under image
    small: '400x400#', # images on category view
    product: '800x800#', # full product image
    large: '1200x1200#' # light box image
  }
end
