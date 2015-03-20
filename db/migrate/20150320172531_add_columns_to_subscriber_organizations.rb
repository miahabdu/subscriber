class AddColumnsToSubscriberOrganizations < ActiveRecord::Migration
  def change
    add_column :subscriber_organizations, :industry, :string
    add_column :subscriber_organizations, :city, :string
    add_column :subscriber_organizations, :state, :string
    add_column :subscriber_organizations, :description, :string
    add_column :subscriber_organizations, :employees, :integer
  end
end
