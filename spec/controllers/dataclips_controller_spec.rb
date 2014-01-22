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

describe DataclipsController do

  # This should return the minimal set of attributes required to create a valid
  # Dataclip. As you add validations to Dataclip, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "db_connection_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DataclipsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all dataclips as @dataclips" do
      dataclip = Dataclip.create! valid_attributes
      get :index, {}, valid_session
      assigns(:dataclips).should eq([dataclip])
    end
  end

  describe "GET show" do
    it "assigns the requested dataclip as @dataclip" do
      dataclip = Dataclip.create! valid_attributes
      get :show, {:id => dataclip.to_param}, valid_session
      assigns(:dataclip).should eq(dataclip)
    end
  end

  describe "GET new" do
    it "assigns a new dataclip as @dataclip" do
      get :new, {}, valid_session
      assigns(:dataclip).should be_a_new(Dataclip)
    end
  end

  describe "GET edit" do
    it "assigns the requested dataclip as @dataclip" do
      dataclip = Dataclip.create! valid_attributes
      get :edit, {:id => dataclip.to_param}, valid_session
      assigns(:dataclip).should eq(dataclip)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Dataclip" do
        expect {
          post :create, {:dataclip => valid_attributes}, valid_session
        }.to change(Dataclip, :count).by(1)
      end

      it "assigns a newly created dataclip as @dataclip" do
        post :create, {:dataclip => valid_attributes}, valid_session
        assigns(:dataclip).should be_a(Dataclip)
        assigns(:dataclip).should be_persisted
      end

      it "redirects to the created dataclip" do
        post :create, {:dataclip => valid_attributes}, valid_session
        response.should redirect_to(Dataclip.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved dataclip as @dataclip" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dataclip.any_instance.stub(:save).and_return(false)
        post :create, {:dataclip => { "db_connection_id" => "invalid value" }}, valid_session
        assigns(:dataclip).should be_a_new(Dataclip)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dataclip.any_instance.stub(:save).and_return(false)
        post :create, {:dataclip => { "db_connection_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested dataclip" do
        dataclip = Dataclip.create! valid_attributes
        # Assuming there are no other dataclips in the database, this
        # specifies that the Dataclip created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Dataclip.any_instance.should_receive(:update).with({ "db_connection_id" => "1" })
        put :update, {:id => dataclip.to_param, :dataclip => { "db_connection_id" => "1" }}, valid_session
      end

      it "assigns the requested dataclip as @dataclip" do
        dataclip = Dataclip.create! valid_attributes
        put :update, {:id => dataclip.to_param, :dataclip => valid_attributes}, valid_session
        assigns(:dataclip).should eq(dataclip)
      end

      it "redirects to the dataclip" do
        dataclip = Dataclip.create! valid_attributes
        put :update, {:id => dataclip.to_param, :dataclip => valid_attributes}, valid_session
        response.should redirect_to(dataclip)
      end
    end

    describe "with invalid params" do
      it "assigns the dataclip as @dataclip" do
        dataclip = Dataclip.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dataclip.any_instance.stub(:save).and_return(false)
        put :update, {:id => dataclip.to_param, :dataclip => { "db_connection_id" => "invalid value" }}, valid_session
        assigns(:dataclip).should eq(dataclip)
      end

      it "re-renders the 'edit' template" do
        dataclip = Dataclip.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dataclip.any_instance.stub(:save).and_return(false)
        put :update, {:id => dataclip.to_param, :dataclip => { "db_connection_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested dataclip" do
      dataclip = Dataclip.create! valid_attributes
      expect {
        delete :destroy, {:id => dataclip.to_param}, valid_session
      }.to change(Dataclip, :count).by(-1)
    end

    it "redirects to the dataclips list" do
      dataclip = Dataclip.create! valid_attributes
      delete :destroy, {:id => dataclip.to_param}, valid_session
      response.should redirect_to(dataclips_url)
    end
  end

end