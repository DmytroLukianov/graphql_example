module Mutations
  class CreateItemMutation < Mutations::BaseMutation
    argument :title, String, required: true
    argument :user_id, String, required: true
    argument :description, String, required: false
    argument :image_url, String, required: false

    type Types::ItemType

    def resolve(title:, user_id:, description: nil, image_url: nil)
      Item.create!(
        title: title,
        user_id: user_id,
        description: description,
        image_url: image_url,
      )
    end
  end
end
