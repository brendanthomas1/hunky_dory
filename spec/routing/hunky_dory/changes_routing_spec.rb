require 'rails_helper'

module HunkyDory
  RSpec.describe ChangesController, type: :routing do
    describe 'routing' do
      routes { HunkyDory::Engine.routes }

      it 'routes to #index' do
        expect(get: '/changes')
          .to route_to(controller: 'hunky_dory/changes', action: 'index')
      end

      it 'routes to #new' do
        expect(get: '/changes/new')
          .to route_to(controller: 'hunky_dory/changes', action: 'new')
      end

      it 'routes to #show' do
        expect(get: '/changes/1').to route_to(
          controller: 'hunky_dory/changes', action: 'show', id: '1'
        )
      end

      it 'routes to #edit' do
        expect(get: '/changes/1/edit').to route_to(
          controller: 'hunky_dory/changes', action: 'edit', id: '1'
        )
      end

      it 'routes to #create' do
        expect(post: '/changes').to route_to(
          controller: 'hunky_dory/changes', action: 'create'
        )
      end

      it 'routes to #update via PUT' do
        expect(put: '/changes/1').to route_to(
          controller: 'hunky_dory/changes', action: 'update', id: '1'
        )
      end

      it 'routes to #update via PATCH' do
        expect(patch: '/changes/1').to route_to(
          controller: 'hunky_dory/changes', action: 'update', id: '1'
        )
      end

      it 'routes to #destroy' do
        expect(delete: '/changes/1').to route_to(
          controller: 'hunky_dory/changes', action: 'destroy', id: '1'
        )
      end
    end
  end
end
