ActiveAdmin.register Screen do
  permit_params :name, :seat_count

  filter :movies
  filter :shows

  index do 

    column :name
    column :seat_count
    column ("Number of Showings") { |screen| screen.shows.size }
    column ("Current Movies Playings") do |screen|
        screen.shows.collect { |show| show.movie.title }
     end
  end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
