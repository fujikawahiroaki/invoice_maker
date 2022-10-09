json.extract! profile, :id, :first_name, :family_name, :city, :address, :tel, :bank_name, :bank_shop, :bank_type, :bank_num, :bank_owner, :created_at, :updated_at
json.url profile_url(profile, format: :json)
