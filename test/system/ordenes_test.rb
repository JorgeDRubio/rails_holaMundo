require "application_system_test_case"

class OrdenesTest < ApplicationSystemTestCase
  setup do
    @ordene = ordenes(:one)
  end

  test "visiting the index" do
    visit ordenes_url
    assert_selector "h1", text: "Ordenes"
  end

  test "creating a Ordene" do
    visit ordenes_url
    click_on "New Ordene"

    fill_in "Fecha", with: @ordene.fecha
    fill_in "Numero Orden", with: @ordene.numero_orden
    click_on "Create Ordene"

    assert_text "Ordene was successfully created"
    click_on "Back"
  end

  test "updating a Ordene" do
    visit ordenes_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @ordene.fecha
    fill_in "Numero Orden", with: @ordene.numero_orden
    click_on "Update Ordene"

    assert_text "Ordene was successfully updated"
    click_on "Back"
  end

  test "destroying a Ordene" do
    visit ordenes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ordene was successfully destroyed"
  end
end
