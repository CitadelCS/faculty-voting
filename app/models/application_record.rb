class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
    
    extend ActiveSupport::Concern

      included do
        rescue_from CanCan::AccessDenied do |exception|
          redirect_to(root_url, {:alert => exception.message })
        end
      end
      # Convienience method to authorize every route
      def authorize_routes!
        before { authorize_route! }
      end
end
