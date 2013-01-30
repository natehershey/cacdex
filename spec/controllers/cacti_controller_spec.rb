require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CactiController do

  # This should return the minimal set of attributes required to create a valid
  # Cactus. As you add validations to Cactus, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "common_name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CactiController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all cacti as @cacti" do
      cactus = Cactus.create! valid_attributes
      get :index, {}, valid_session
      assigns(:cacti).should eq([cactus])
    end
  end

  describe "GET show" do
    it "assigns the requested cactus as @cactus" do
      cactus = Cactus.create! valid_attributes
      get :show, {:id => cactus.to_param}, valid_session
      assigns(:cactus).should eq(cactus)
    end
  end

  describe "GET new" do
    it "assigns a new cactus as @cactus" do
      get :new, {}, valid_session
      assigns(:cactus).should be_a_new(Cactus)
    end
  end

  describe "GET edit" do
    it "assigns the requested cactus as @cactus" do
      cactus = Cactus.create! valid_attributes
      get :edit, {:id => cactus.to_param}, valid_session
      assigns(:cactus).should eq(cactus)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Cactus" do
        expect {
          post :create, {:cactus => valid_attributes}, valid_session
        }.to change(Cactus, :count).by(1)
      end

      it "assigns a newly created cactus as @cactus" do
        post :create, {:cactus => valid_attributes}, valid_session
        assigns(:cactus).should be_a(Cactus)
        assigns(:cactus).should be_persisted
      end

      it "redirects to the created cactus" do
        post :create, {:cactus => valid_attributes}, valid_session
        response.should redirect_to(Cactus.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cactus as @cactus" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cactus.any_instance.stub(:save).and_return(false)
        post :create, {:cactus => { "common_name" => "invalid value" }}, valid_session
        assigns(:cactus).should be_a_new(Cactus)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cactus.any_instance.stub(:save).and_return(false)
        post :create, {:cactus => { "common_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested cactus" do
        cactus = Cactus.create! valid_attributes
        # Assuming there are no other cacti in the database, this
        # specifies that the Cactus created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Cactus.any_instance.should_receive(:update_attributes).with({ "common_name" => "MyString" })
        put :update, {:id => cactus.to_param, :cactus => { "common_name" => "MyString" }}, valid_session
      end

      it "assigns the requested cactus as @cactus" do
        cactus = Cactus.create! valid_attributes
        put :update, {:id => cactus.to_param, :cactus => valid_attributes}, valid_session
        assigns(:cactus).should eq(cactus)
      end

      it "redirects to the cactus" do
        cactus = Cactus.create! valid_attributes
        put :update, {:id => cactus.to_param, :cactus => valid_attributes}, valid_session
        response.should redirect_to(cactus)
      end
    end

    describe "with invalid params" do
      it "assigns the cactus as @cactus" do
        cactus = Cactus.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cactus.any_instance.stub(:save).and_return(false)
        put :update, {:id => cactus.to_param, :cactus => { "common_name" => "invalid value" }}, valid_session
        assigns(:cactus).should eq(cactus)
      end

      it "re-renders the 'edit' template" do
        cactus = Cactus.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cactus.any_instance.stub(:save).and_return(false)
        put :update, {:id => cactus.to_param, :cactus => { "common_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested cactus" do
      cactus = Cactus.create! valid_attributes
      expect {
        delete :destroy, {:id => cactus.to_param}, valid_session
      }.to change(Cactus, :count).by(-1)
    end

    it "redirects to the cacti list" do
      cactus = Cactus.create! valid_attributes
      delete :destroy, {:id => cactus.to_param}, valid_session
      response.should redirect_to(cacti_url)
    end
  end

end
