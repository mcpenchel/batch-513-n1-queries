class BooksController < ApplicationController
  def index
    # Para consertar o problema de N + 1 queries, use includes e envie como argumento um símbolo com o nome
    # da associação! Se um Book belongs_to Author, vai ser Book.all.includes(:author).. Singular
    # Mas indo pelo Author, o Author has_many Book, então seria Author.all.includes(:books).. Plural

    # Você pode ir encadeando os includes, seja por fazer
    # includes(...).includes(...)
    # ou fazendo
    # includes(some_association: :some_other_association)
    @books = Book.all.includes(:author)
  end
end