# Usando a imagem oficial do Ruby
FROM ruby:3.2

# Instala dependências do sistema
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Configura diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto
COPY Gemfile* ./

# Instala as gems
RUN bundle install

# Copia todos os arquivos do projeto
COPY . .

# Porta padrão do Rails
EXPOSE 3000

# Comando padrão ao iniciar o container
CMD ["rails", "server", "-b", "0.0.0.0"]
