class DathangController < ApplicationController
  before_action :authenticate_user!

  def index
    @donhang = session[:cart]
    @tongtien = session[:tongtien]
    @khachhang = Khachhang.where(user_id: current_user.id)
    @dathang = Donhang.new 
  end

  def datmua
    respond_to do |format|
      tongtien = session[:tongtien]
      dh = Donhang.create(ngaylap: Time.now.strftime("%Y/%m/%d"), tongtien: tongtien, khachhang_id: dathang_params['khachhang_id'], diachigh: dathang_params['diachigh'], httt: dathang_params['httt'])
      i = 0
      session[:cart].each do |t|
        Ctdh.create(Soluong: t['soluong'], dongia: t['giaban'], donhang_id: dh.id, sach_id: t['id'])
      end 
      session[:cart] = []
      session[:tongtien] = 0
      format.html { redirect_to :dathang_index, notice: 'Đặt hàng thành công' }
    end
  end

  def dathang_params
    params.require(:donhang).permit(:khachhang_id, :diachigh, :httt)
  end 
end
