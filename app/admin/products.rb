ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :discription, :quantity, :price, :discount, :image, :sub_address_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :discription, :quantity, :price, :discount, :image, :sub_address_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
      f.inputs do
        f.input :name
        f.input :discription
        f.input :quantity
        f.input :price
        f.input :discount
        f.input "image" do |pro|
        image_tag(pro.image height:"50", width: "50") rescue nil
      end
          f.input :sub_address_id, as: :select, collection: option_groups_from_collection_for_select(Address.all, :sub_addresses, :name, :id, :name, resource.sub_address_id)

      f.actions 
    end
   end 
  
end
