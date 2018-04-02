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
  for pet in pet_shop[:pets]
  return pet.delete(:name) if name == pet[:name]
end
end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets].push(:new_pet)
end
# new_pet works with/without the colon (:)
