class <%= class_name %>Api < ActionWebService::API::Base
<% for action in actions -%>
  api_method :<%= action %>
<% end -%>
end
