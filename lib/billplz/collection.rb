module Billplz
  class Collection < Model
    before_request :set_base_url
    #before_request :replace_body

    post :create, ""

    private

    def set_base_url(name, request)
      Flexirest::Base.base_url = "https://billplz-staging.herokuapp.com/api/v3/collections"
    end

  end
end
