json.extract! building, :id, :type, :name, :description, :population_bonus, :melange_bonus, :material_bonus, :solar_bonus, :exp_bonus, :population_cost, :melange_cost, :material_cost, :solar_cost, :exp_cost, :created_at, :updated_at
json.url building_url(building, format: :json)