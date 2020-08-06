class KhachhangController < ApplicationController
  def index
    @khachhang = Khachhang.where(user_id: current_user.id).limit(1)
    if @khachhang.empty?
      kh = Khachhang.create(tenkh: "Trong", diachi: "Trong", gioitinh: "Nam", sodt: "0123456789", user_id: current_user.id)
    end 
    @khachhang = Khachhang.where(user_id: current_user.id).limit(1)
    @khUpdate = Khachhang.new
  end

  def update
    respond_to do |format|
      kh = Khachhang.find_by(id: khachhang_params['id'])
      kh.tenkh = khachhang_params['tenkh']
      kh.diachi = khachhang_params['diachi']
      kh.gioitinh = khachhang_params['gioitinh']
      kh.sodt = khachhang_params['sodt']
      if kh.save
        format.html { redirect_to :khachhang_index, notice: 'Cập nhật thông tin thành công' }
      else
        format.html { render :index }
      end
    end
    
  end 

  def khachhang_params
    params.require(:khachhang).permit(:id, :tenkh, :gioitinh, :diachi, :sodt)
  end
end
