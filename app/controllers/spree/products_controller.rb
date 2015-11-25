module Spree
  class ProductsController < Spree::StoreController
    before_action :load_product, only: :show
    before_action :load_taxon, only: :index

    rescue_from ActiveRecord::RecordNotFound, :with => :render_404
    helper 'spree/taxons'

    respond_to :html

    def index
      @searcher = build_searcher(params.merge(include_images: true))
      @products = @searcher.retrieve_products
      @taxonomies = Spree::Taxonomy.includes(root: :children)
    end

    def show
      @imageProds =  @product.imagePath
      @imageProds2 = @product.imagePath2
      @imageProds3 =  @product.imagePath3
      @imageProds4 =  @product.imagePath4
      @imageProds5 =  @product.imagePath5
      @imageProds6 =  @product.imagePath6
      @imageProds7 =  @product.imagePath7
      @imageProds8 =  @product.imagePath8
      @imageProds9 =  @product.imagePath9
      @imageProds10 =  @product.imagePath10
      @imageProds11 =  @product.imagePath11
      @imageProds12 =  @product.imagePath12
      @imageProds13 =  @product.imagePath13
      @imageProds14 =  @product.imagePath14
      @imageProds15 =  @product.imagePath15
      @variants = @product.variants_including_master.active(current_currency).includes([:option_values, :images])
      @product_properties = @product.product_properties.includes(:property)
      @taxon = Spree::Taxon.find(params[:taxon_id]) if params[:taxon_id]
      redirect_if_legacy_path
    end

    private

      def accurate_title
        if @product
          @product.meta_title.blank? ? @product.name : @product.meta_title
        else
          super
        end
      end

      def load_product
        if try_spree_current_user.try(:has_spree_role?, "admin")
          @products = Product.with_deleted
        else
          @products = Product.active(current_currency)
        end
        @product = @products.friendly.find(params[:id])
      end

      def load_taxon
        @taxon = Spree::Taxon.find(params[:taxon]) if params[:taxon].present?
      end

      def redirect_if_legacy_path
        # If an old id or a numeric id was used to find the record,
        # we should do a 301 redirect that uses the current friendly id.
        if params[:id] != @product.friendly_id
          params.merge!(id: @product.friendly_id)
          return redirect_to url_for(params), status: :moved_permanently
        end
      end
  end
end
