class <%= class_name %>Controller < ApplicationController
  wsdl_service_name '<%= class_name %>'
<% for action in actions -%>

  def <%= action %>
  end
<% end -%>
end
