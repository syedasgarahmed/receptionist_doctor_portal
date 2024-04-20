# spec/controllers/patients_controller_spec.rb

require 'rails_helper'

RSpec.describe PatientsController, type: :controller do
  describe 'GET #index' do
    it 'assigns @patients' do
      patient = Patient.create(name: 'John Doe', age: 30, gender: 'Male')
      get :index
      expect(assigns(:patients)).to eq([patient])
    end
  end

  describe 'POST #create' do
    it 'creates a new patient' do
      expect {
        post :create, params: { patient: { name: 'Jane Smith', age: 25, gender: 'Female' } }
      }.to change(Patient, :count).by(1)
    end
  end

  # Similarly, write tests for other CRUD actions
describe 'GET #show' do
    it 'assigns the requested patient to @patient' do
        patient = Patient.create(name: 'John Doe', age: 30, gender: 'Male')
        get :show, params: { id: patient.id }
        expect(assigns(:patient)).to eq(patient)
    end
end

describe 'PATCH #update' do
    it 'updates the requested patient' do
        patient = Patient.create(name: 'John Doe', age: 30, gender: 'Male')
        patch :update, params: { id: patient.id, patient: { name: 'John Smith' } }
        patient.reload
        expect(patient.name).to eq('John Smith')
    end
end

describe 'DELETE #destroy' do
    it 'destroys the requested patient' do
        patient = Patient.create(name: 'John Doe', age: 30, gender: 'Male')
        expect {
            delete :destroy, params: { id: patient.id }
        }.to change(Patient, :count).by(-1)
    end
end
describe 'GET #show' do
  it 'assigns the requested patient to @patient' do
    patient = Patient.create(name: 'John Doe', age: 30, gender: 'Male')
    get :show, params: { id: patient.id }
    expect(assigns(:patient)).to eq(patient)
  end
end

