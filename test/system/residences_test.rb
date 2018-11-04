require "application_system_test_case"

class ResidencesTest < ApplicationSystemTestCase
  setup do
    @residence = residences(:one)
  end

  test "visiting the index" do
    visit residences_url
    assert_selector "h1", text: "Residences"
  end

  test "creating a Residence" do
    visit residences_url
    click_on "New Residence"

    fill_in "Ciudad", with: @residence.ciudad
    fill_in "Desc", with: @residence.desc
    fill_in "Direccion", with: @residence.direccion
    fill_in "Img Link", with: @residence.img_link
    fill_in "Nombre", with: @residence.nombre
    fill_in "Pais", with: @residence.pais
    fill_in "Partido", with: @residence.partido
    fill_in "Provincia", with: @residence.provincia
    click_on "Create Residence"

    assert_text "Residence was successfully created"
    click_on "Back"
  end

  test "updating a Residence" do
    visit residences_url
    click_on "Edit", match: :first

    fill_in "Ciudad", with: @residence.ciudad
    fill_in "Desc", with: @residence.desc
    fill_in "Direccion", with: @residence.direccion
    fill_in "Img Link", with: @residence.img_link
    fill_in "Nombre", with: @residence.nombre
    fill_in "Pais", with: @residence.pais
    fill_in "Partido", with: @residence.partido
    fill_in "Provincia", with: @residence.provincia
    click_on "Update Residence"

    assert_text "Residence was successfully updated"
    click_on "Back"
  end

  test "destroying a Residence" do
    visit residences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Residence was successfully destroyed"
  end
end
