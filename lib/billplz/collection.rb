module Billplz
  class Collection < Model
    before_request :set_base_url
    #before_request :replace_body

    post :create, "/collections/"
    post :create_open_collection, "/open_collections"
    post :deactivate, "/collections/:id/deactivate"
    post :activate, "/collections/:id/activate"

    private

    def set_base_url(name, request)
      Flexirest::Base.base_url = "#{Billplz.configuration.api_url}"
    end

  end
end
