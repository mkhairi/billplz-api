module Billplz
  class Bill < Model

    before_request :set_base_url
    before_request :replace_body

    get :find, "/:id"
    post :create, ""
    delete :delete, "/:id"

    private

    def set_base_url(name, request)
      Flexirest::Base.base_url = "https://billplz-staging.herokuapp.com/api/v3/bills"
    end

    def replace_body(name, request)
      if name == :create
        #add collection id here
        request.post_params = request.post_params.merge(collection_id: "#{ENV['BILLPLZ_COLLECTION_ID']}")
        request.body = request.post_params.to_json
      end
    end

  end
end
