class RegistroBeaconsController < ApplicationController
  def RegistroBeacons
  end
  def datos
    sql = "select a.id as id, a.fechaentrada, b.fechasalida
from beacon a
inner join beacon1 b
on a.id = b.id
order by a.fechaentrada desc, b.fechasalida desc"
    @dato = ActiveRecord::Base.connection.exec_query(sql)
    render :json => @dato
  end
  def Chart
    sql = "select count(a.fechaentrada) as 'FechaEntrada', count(b.fechasalida) as 'FechaSalida'
from beacon a
inner join beacon1 b
on a.id = b.id"
    @dato = ActiveRecord::Base.connection.exec_query(sql)
    render :json => @dato
  end
  
 
end 
