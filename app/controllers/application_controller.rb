class ApplicationController < ActionController::Base

  include(SessionsHelper)
  include(RolesHelper)
  include(PermissionsHelper)
  include(Pagy::Backend)

end
