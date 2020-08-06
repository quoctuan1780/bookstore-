class TheloaiController < ApplicationController
  def index
    @id = params[:id]
    @theloai = Theloai.all
    @sach = Sach.where(theloai_id: @id.to_i)
  end
end
