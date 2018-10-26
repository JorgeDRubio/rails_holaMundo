require "application_system_test_case"

class DetalleOrdenesTest < ApplicationSystemTestCase
  setup do
    @detalle_ordene = detalle_ordenes(:one)
  end

  test "visiting the index" do
    visit detalle_ordenes_url
    assert_selector "h1", text: "Detalle Ordenes"
  end

  test "creating a Detalle ordene" do
    visit detalle_ordenes_url
    click_on "New Detalle Ordene"

    fill_in "Cantidad", with: @detalle_ordene.cantidad
    fill_in "Precio Venta", with: @detalle_ordene.precio_venta
    click_on "Create Detalle ordene"

    assert_text "Detalle ordene was successfully created"
    click_on "Back"
  end

  test "updating a Detalle ordene" do
    visit detalle_ordenes_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @detalle_ordene.cantidad
    fill_in "Precio Venta", with: @detalle_ordene.precio_venta
    click_on "Update Detalle ordene"

    assert_text "Detalle ordene was successfully updated"
    click_on "Back"
  end

  test "destroying a Detalle ordene" do
    visit detalle_ordenes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detalle ordene was successfully destroyed"
  end
end
