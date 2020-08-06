class ChitietController < ApplicationController
  def index
    @id = params[:id] 
    @sach = Sach.where(id: @id.to_i).limit(1)
    @sachcungloai = Sach.where(theloai_id:  @sach[0].theloai_id)
  end

  def themnhieusanpham
    @id = params[:id]
    @soluong = params[:soluong]
    gia = 0
    check = false
    session[:cart].each do |s|
      if s['id'] == @id.to_i
        check = true
        s['soluong'] += @soluong.to_i
        gia = @soluong.to_i * s['giaban'].to_i
        session[:tongtien] += gia
      end 
    end
    if !check
      @result = Sach.where(id: @id.to_i).limit(1) 
      struct = Struct.new(:id, :tensach, :hinhanh, :soluong, :giaban)
      gh = struct.new(@result[0].id, @result[0].tensach, @result[0].hinhanh, @soluong.to_i, @result[0].giaban)
      session[:cart] << gh
      session[:tongtien] += @soluong.to_i * @result[0].giaban
    end
    respond_to do |format|
      format.json {render json: @soluong}
    end
  end
end
