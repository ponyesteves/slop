require 'test_helper'

class TransaccionesControllerTest < ActionController::TestCase
  setup do
    @transaccion = transacciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transacciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaccion" do
    assert_difference('Transaccion.count') do
      post :create, transaccion: { cuotas: @transaccion.cuotas, fecha: @transaccion.fecha, importe: @transaccion.importe, tipo: @transaccion.tipo }
    end

    assert_redirected_to transaccion_path(assigns(:transaccion))
  end

  test "should show transaccion" do
    get :show, id: @transaccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaccion
    assert_response :success
  end

  test "should update transaccion" do
    patch :update, id: @transaccion, transaccion: { cuotas: @transaccion.cuotas, fecha: @transaccion.fecha, importe: @transaccion.importe, tipo: @transaccion.tipo }
    assert_redirected_to transaccion_path(assigns(:transaccion))
  end

  test "should destroy transaccion" do
    assert_difference('Transaccion.count', -1) do
      delete :destroy, id: @transaccion
    end

    assert_redirected_to transacciones_path
  end
end
