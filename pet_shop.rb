def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, num)
  return pet_shop[:admin][:total_cash] +=  num
end

def add_or_remove_cash__remove(pet_shop, num)
  return pet_shop[:admin][:total_cash] -=  num
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num)
  return pet_shop[:admin][:pets_sold] += num
end

def stock_count(count)
  return count[:pets].count
end

def pets_by_breed(pet_shop, breed)
  breeds_array = []
  for pet in pet_shop[:pets]
    if breed == pet[:breed]
      breeds_array << pet
    end
  end
  return breeds_array
end

def pets_by_missing_breed(pet_shop, breed)
  missing_breed = []
  for pet in pet_shop[:pets]
    if breed == pet[:breed]
      missing_breed.push pet
    end
  end
  return missing_breed
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    return pet if name == pet[:name]
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  # return pet_shop(find_pet_by_name.delete(name))
  for pet in pet_shop[:pets]
    return pet.delete(:name) if name == pet[:name]
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customers)
  customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, pet)
  customer[:cash] >= pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)
  # the customer pet count increases by 1
  if pet != nil && customer_can_afford_pet(customer, pet)
      add_pet_to_customer(customer, pet)

      # the number of pets sold by the shop increases by 1
      add_pet_to_stock(pet_shop, pet)
      increase_pets_sold(pet_shop, 1)

      # the amount of cash in the shop goes up by the price of the pet
      add_or_remove_cash(pet_shop, pet[:price])
  end
end

# def
#
# end
