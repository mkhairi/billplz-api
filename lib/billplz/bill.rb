module Billplz
  class Bill < Model

    before_request :set_base_url
    before_request :replace_body

    get :find, "/bills/:id"
    get :transaction, "/bills/:id/transactions"
    post :create, "/bills"
    delete :delete, "/bills/:id"

    private

    def replace_body(name, request)
      if name == :create
        #add collection id here
        request.post_params = request.post_params.merge(collection_id: "#{ENV['BILLPLZ_COLLECTION_ID']}")
        request.body = request.post_params.to_json
      end
    end

  end
end
