Deface::Override.new(
  :virtual_path => "spree/layouts/spree_application",
  :name => "sbt_add_select2_javascript",
  :insert_bottom => "[data-hook='inside_head']",
  :text => "<%= javascript_include_tag 'select2' %>"
)