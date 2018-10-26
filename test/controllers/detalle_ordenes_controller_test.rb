require 'test_helper'

class DetalleOrdenesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle_ordene = detalle_ordenes(:one)
  end

  test "should get index" do
    get detalle_ordenes_url
    assert_response :success
  end

  test "should get new" do
    get new_detalle_ordene_url
    assert_response :success
  end

  test "should create detalle_ordene" do
    assert_difference('DetalleOrdene.count') do
      post detalle_ordenes_url, params: { detalle_ordene: { cantidad: @detalle_ordene.cantidad, precio_venta: @detalle_ordene.precio_venta } }
    end

    assert_redirected_to detalle_ordene_url(DetalleOrdene.last)
  end

  test "should show detalle_ordene" do
    get detalle_ordene_url(@detalle_ordene)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalle_ordene_url(@detalle_ordene)
    assert_response :success
  end

  test "should update detalle_ordene" do
    patch detalle_ordene_url(@detalle_ordene), params: { detalle_ordene: { cantidad: @detalle_ordene.cantidad, precio_venta: @detalle_ordene.precio_venta } }
    assert_redirected_to detalle_ordene_url(@detalle_ordene)
  end

  test "should destroy detalle_ordene" do
    assert_difference('DetalleOrdene.count', -1) do
      delete detalle_ordene_url(@detalle_ordene)
    end

    assert_redirected_to detalle_ordenes_url
  end
end
