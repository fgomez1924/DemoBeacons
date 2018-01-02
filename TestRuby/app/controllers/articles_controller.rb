class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to action: :show
  end
  
  def show
    sql = "select * from users;"
    users = ActiveRecord::Base.connection.exec_query(sql)
    for i in 0..users.length
      @data.save(JSON.parse(users[i]))
    end
    
  end
  
  def datos
    sql = "SELECT a.Rut                             as Rut
            ,Nombre                                 as Nombre
            ,isnull(a.FechaEntrada,'Sin dato')      as Entrada
            ,isnull(a.FechaSalida,'Sin dato')       as Salida
            ,isnull(Descripcion,'Sin dato')         as Descripcion
          FROM [DemoUMayor].[dbo].[Beacons] a
          inner join [DemoUMayor].[dbo].[Sala] b
            on a.IdBeacons = b.IdBeacons
          inner join [DemoUMayor].[dbo].[Usuario] c 
            on a.Rut=c.Rut"
    @dato = ActiveRecord::Base.connection.exec_query(sql)
    render :json => @dato
  end
  def edit
  @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
  

  
end
