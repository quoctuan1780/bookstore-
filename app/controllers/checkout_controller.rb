class CheckoutController < ApplicationController
  before_action :authenticate_user!

  def index
    @cart = session[:cart]
    session[:tongtien] = 0
    session[:cart].each do |sp|
      session[:tongtien] += sp['soluong'].to_i * sp['giaban']
    end
    @tongtien = session[:tongtien]
  end

  def xoasanpham
    @id = params[:id] 
    if !session[:cart].empty?
      session[:cart].each do |sp|
        if sp['id'] == @id.to_i
          session[:tongtien] -= sp['soluong']*sp['giaban']
          session[:cart].delete(sp)
          break
        end 
      end 
    end 
    respond_to do |format|
      format.json {render json: session[:tongtien]}
    end
  end

  def thaydoisoluong
    @id = params[:id]
    @soluong = params[:soluong]  
    gia = 0
    session[:cart].each do |i|
      if i['id'] == @id.to_i
        gia = i['soluong'] * i['giaban']
        session[:tongtien] -= gia
        i['soluong'] = @soluong.to_i
        gia = @soluong.to_i * i['giaban']
        session[:tongtien] += gia
      end
    end
    respond_to do |format|
      format.json {render json: session[:tongtien]}
    end
  end 
end
