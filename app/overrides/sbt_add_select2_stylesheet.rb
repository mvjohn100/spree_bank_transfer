Deface::Override.new(
  :virtual_path => "spree/layouts/spree_application",
  :name => "sbt_add_select2_stylesheet",
  :insert_bottom => "[data-hook='inside_head']",
  :text => "<%= stylesheet_link_tag 'select2' %>"
)