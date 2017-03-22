module Billplz
  class Model < Flexirest::Base


    request_body_type :json
    before_request :set_base_option
    before_request :replace_token_in_url
    

    private

    def replace_token_in_url(name, request)
      auth = "Basic " + Base64.encode64(Billplz.configuration.api_key + ":").strip
      request.headers["Authorization"] = auth
    end

    def set_base_option(name, request)
      Flexirest::Base.base_url = "#{Billplz.configuration.api_url}"
      Flexirest::Base.perform_caching = "#{Billplz.configuration.perform_caching}"
    end
   
  end
end