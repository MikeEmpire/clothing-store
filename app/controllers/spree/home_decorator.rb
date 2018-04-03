Spree::HomeController.class_eval do
  def sale
    @products = Spree::Product.joins(:variants_including_master).where('spree_variants.sale_price is not null').distinct
  end
  def ssl
    render :json => { :status => :ok, :message => "Success!", :html => "VLfEDeZ04d7nGuhtj_N81ARgmeQKALgOSTtTa4mfw.SWS7MRkxHgbGdHiy0wrT_BPaMeLKGT8nrH6SgN1FasU" }
  end
end
