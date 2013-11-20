module RSpec::DefaultHeaders
  extend ActiveSupport::Concern

  included do
    [:get, :post, :put, :delete, :head].each do |method|
      class_eval <<-EOV
        def #{method}(path, parameters = nil, headers = nil)
          super(path, parameters, @default_headers.merge(Hash(headers)))
        end
      EOV
    end
  end
end
