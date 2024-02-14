class UserTypesController < ApplicationController
  def update_frame
    @selected_frame = params[:user_type]
    render turbo_stream: turbo_stream.replace(@selected_frame + '_frame', partial: "#{@selected_frame.pluralize}/registrations/new", locals: { resource: @selected_frame.capitalize.constantize.new, resource_name: @selected_frame })
  end
end
