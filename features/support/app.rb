# Declarando a classe App que é onde as pages serão instanciadas
class App
  def home
    Home.new
  end

  def login
    Login.new
  end
end
