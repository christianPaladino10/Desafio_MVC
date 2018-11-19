require 'rails_helper'

feature 'User visita homepage' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_content 'Bem vindo ao Teste de MVC'
  end

  scenario 'e ve o produto' do
    produto = Produto.create(nome: 'camiseta',
      descricao: 'vingadores guerra infinita',
      quantidade: 100, preco: 99.99)

      visit root_path

      expect(page).to have_css('h2', text: 'camiseta')
      expect(page).to have_css('dd', text: produto.descricao)
      expect(page).to have_css('dd', text: produto.preco)

    end
  end
