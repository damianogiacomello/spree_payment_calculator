Deface::Override.new(:virtual_path => 'spree/admin/payment_methods/_form',
                     :name => 'add_calculators_to_payment_methods',
                     :insert_before => %q{[id='preference-settings']}, 
                     :text => %q{<% @calculators = Spree::PaymentMethod.calculators.sort_by(&:name) rescue nil %><%= render :partial => 'spree/admin/shared/calculator_fields', :locals => {:f => f}},
                     :disabled => false)