require "application_system_test_case"

class ComidasTest < ApplicationSystemTestCase
  setup do
    @comida = comidas(:one)
  end

  test "visiting the index" do
    visit comidas_url
    assert_selector "h1", text: "Comidas"
  end

  test "should create comida" do
    visit comidas_url
    click_on "New comida"

    fill_in "Descricao", with: @comida.descricao
    fill_in "Nome", with: @comida.nome
    fill_in "Preco", with: @comida.preco
    fill_in "Tipo", with: @comida.tipo
    click_on "Create Comida"

    assert_text "Comida was successfully created"
    click_on "Back"
  end

  test "should update Comida" do
    visit comida_url(@comida)
    click_on "Edit this comida", match: :first

    fill_in "Descricao", with: @comida.descricao
    fill_in "Nome", with: @comida.nome
    fill_in "Preco", with: @comida.preco
    fill_in "Tipo", with: @comida.tipo
    click_on "Update Comida"

    assert_text "Comida was successfully updated"
    click_on "Back"
  end

  test "should destroy Comida" do
    visit comida_url(@comida)
    click_on "Destroy this comida", match: :first

    assert_text "Comida was successfully destroyed"
  end
end
