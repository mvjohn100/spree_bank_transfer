Deface::Override.new(
  :virtual_path => "spree/orders/show",
  :name => "sbt_add_payment_confirmation",
  :insert_before => "fieldset#order_summary",
  :partial => "spree/orders/payment_confirmation"

)