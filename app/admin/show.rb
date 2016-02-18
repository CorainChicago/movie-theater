ActiveAdmin.register Show do
  permit_params :movie_id, :screen_id, :starting_time

  filter :movie
  filter :screen

  index do 
    column :id
    column ("Movie") { |show| show.movie.title }
    column ("Movie Rating") { |show| show.movie.rating }
    column ("Movie Length") { |show| show.movie.length }
    column :seats_sold
    column ("Seating Capacity") { |show| show.screen.seat_count }
    column :starting_time
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
