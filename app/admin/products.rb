ActiveAdmin.register Product do
  scope :unreleased
  
  index do
    column "Nombre del Producto", :name
    column "Categoria", :category
    column "Fecha de venta", :released_at
    column "Precio", :sortable => :price do |product|
      div :class => "price" do
        number_to_currency product.price
      end
    end
  default_actions
  end
end