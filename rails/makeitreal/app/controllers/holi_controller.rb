class HoliController < ApplicationController
  # layout "admin"

  def crear
    puts "#{yepeto_path(name: 'algo')}"
  end

  def actualizar
  end

  def ver
    render layout: "custom_products"
  end
end
