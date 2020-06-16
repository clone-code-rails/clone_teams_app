ActiveAdmin.register User do
  index do
    selectable_column
    id_column
    column :email
    column :profile do |user|
      if user.profile.attached?
        image_tag url_for(user.profile), class: "small_image"
      end
    end
    column :name
    column :status
    actions
  end

  filter :name
  filter :email

  scope :all, default: true
  scope :no_status
  scope :job_searching
  scope :job_offering
  scope :in_office

end
