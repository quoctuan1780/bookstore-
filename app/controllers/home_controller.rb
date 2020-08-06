class HomeController < ApplicationController
  before_action :khoitaosession

  def index
    @sach = Sach.paginate(:page => params[:page], per_page: 4)
    @banner = Banner.all
  end

  

  def themgiohang
    @id = params[:id] 
    @result = Sach.where(id: @id.to_i).limit(1) 
    struct = Struct.new(:id, :tensach, :hinhanh, :soluong, :giaban)
    gh = struct.new(@result[0].id, @result[0].tensach, @result[0].hinhanh, 1, @result[0].giaban)
    if session[:cart].empty?
      session[:cart] << gh
    else
      check = false
      session[:cart].each do |sp|
        if sp['id'] == gh.id
          sp['soluong'] += 1
          check = true
          break
        end
      end 
      if !check
        session[:cart] << gh
      end 
    end
    respond_to do |format|
      format.json {render json: @result}
    end
  end

  private
  def khoitaosession
    session[:cart] ||= []  
    session[:tongtien] = 0
    session[:cart].each do |sp|
      session[:tongtien] += sp['soluong'].to_i * sp['giaban']
    end
  end
end
