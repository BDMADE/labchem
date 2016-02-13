1. How to write devise logout link ?

solution: <li><%= link_to 'Logout', destroy_user_session_path, method: :delete %></li>

2. logout link is not worked. It shows invalid authenticity problem.

solution: make sure that these links is lied in layout page.

i. <%= csrf_meta_tags %>
ii.<%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>

3. How to call specefic css/js outside of  layout page ?
solution:
in layout page:
<%= yield :css %>

in specific page:
<% content_for :css do %>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
<% end %>

4. How to redirect a page after a form submission ?

solution:

from a controller, in where save is write,change the redirect path.
example:

redirect_to new_customer_path, notice: 'Customer was successfully created.'

5. How do I create multiple submit buttons for the same form in Rails?

solution:
in form:
<div class='form-button-box'>
          <%= f.submit 'Update changes',id:'form-button-save',:class=>'ui-input-button',:name=>'ajax_save' %>
</div>
<div class='form-button-box'>
          <%= f.submit 'Update and go back to list',:class=>'ui-input-button',:name=>'not_ajax_save' %>
</div>

in controller:
format.html {

          if (params[:ajax_save])
            redirect_to new_customer_path, notice: 'Customer was successfully created.'
          else
            redirect_to customers_path, notice: 'Customer was successfully created.'
          end

        }
        
        
6. How to set a string or integer limits?

solution: in migration page
t.string :name,:limit=>255
t.integer :phone1,:limit=>16


7. how to rollback a specific table from terminal in rails ?
solution:just write this code from terminal

$ rake db:migrate:down VERSION=<table migration number>

example: we will rollback our order table.so that we will find our order table schema is located in db->migrate->20160209142714_create_orders.rb

From terminal:

$ rake db:migrate:down VERSION=20160209142714

8.how to add class name in collection_select in rails 4?

solution:
<%= f.collection_select :status, ShipmentStatus.all, :id, :name, {:prompt => true}, {:class => 'chosen-select'} %>

9. How to make sum using multiple params from a controller?