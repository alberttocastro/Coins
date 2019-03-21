class PermissionController < ApplicationController
  def use_permission_management
  end

  def put_permissions
    User.all.each do |user|
      if !params["publisher_#{user.id}"].empty? && params["publisher_#{user.id}"] != "0" && params["publisher_#{user.id}"] != 0
        user.update(publisher_id: params["publisher_#{user.id}"].to_i)
      end
    end

    redirect_to permission_management_path
  end
  
end
