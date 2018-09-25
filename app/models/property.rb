class Property < ApplicationRecord
  belongs_to :agent
  has_one :address

  #Property.available
  def self.available
    #property id, price, beds, baths, sq_ft, city zip street, agent first_name, agent last name, agent email, agent id
    #property table, agent table, address table

    select('properties.id, price, beds, baths, sq_ft,
            ad.city, ad.zip, ad.street,
            a.first_name, a.last_name, a.email, a.id AS agent_id')
    .joins('INNER JOIN agents a ON a.id = properties.agent_id
            INNER JOIN addresses ad ON ad.property_id = properties.id')
    .where('properties.sold <> TRUE')
    .order('a.id')
  end
end







