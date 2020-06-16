ActiveAdmin.register Team do
  index do
    selectable_column
    id_column
    column :user_id
    column :name
    column :short_desc
    column :start_date
    actions
  end

  # new, edit 커스텀 부분
  form do |f|
    f.inputs do
      f.input :user_id
      f.input :name
      f.input :short_desc
      f.input :start_date, as: "datepicker"
    end
    f.actions
  end
end
