class Project < ApplicationRecord
  # Itens em branco
  validates_presence_of :name, message: "O campo nome não pode ficar em branco"
  validates_presence_of :description, message: "O campo descrição não pode ficar em branco"

  # Tamanho minimo
  validates_length_of :name, minimum: 4, message: 'O campo nome deve ter pelo menos 5 caracteres'
  validates_length_of :description, minimum: 10, message: 'O campo descrição deve ter pelo menos 10 caracteres'

  # Tamanho maximo
  validates_length_of :name, maximum: 20, message: 'Deve ter até 20 caracteres'
  validates_length_of :description, in: 10..100, message: 'Deve ter entre 10 e 100 caracteres'

  # Campo unico
  validates_uniqueness_of :name, message: 'O nome do projeto deve ser unico'


end
