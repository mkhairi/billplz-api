module Billplz
  class Model < Flexirest::Base
    perform_caching false
    #verbose!
    request_body_type :json
    before_request :set_base_url
    before_request :replace_token_in_url
   

    private

    def replace_token_in_url(name, request)
      auth = "Basic " + Base64.encode64(Billplz.configuration.api_key + ":").strip
      request.headers["Authorization"] = auth
    end

    def set_base_url(name, request)
      Flexirest::Base.base_url = "#{Billplz.configuration.api_url}"
    end
   
  end
end