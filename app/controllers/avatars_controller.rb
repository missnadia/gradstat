class AvatarsController < ApplicationController
    before_action :set_avatar, only: [:show, :edit, :update, :destroy]

    def create
        @avatar = Avatar.create(avatar_params)
        redirect_to student_path(@avatar.student)
      end

    private

    def set_avatar
        @avatar = Avatar.find(params[:id])
    end

    def avatar_params
        params.permit(:avatar).require(
            :url,
            :student_id
        )
    end
end