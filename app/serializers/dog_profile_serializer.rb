class DogProfileSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes  :id, :name, :dob, :gender, :breed, :nationality, :avatar
  
  def avatar
    rails_blob_url(object.avatar, only_path: true) if object.avatar.attached?
  end
end
