# # Pet Shop
#
# For your weekend homework your task is to write some functions to be used in a pet shop.
#
# We have provided some tests for you. Your job is simply to make those tests pass! Work on one at a time, and when you're ready to move on, uncomment the next test, watch it fail, then make it pass. You should not need to modify the code in the tests.
#
# ## Remember:
#
# * **Read the error messages!** - Ruby will do its best to tell you why your code isn't working. Don't panic when you see errors or failing tests, the messages are there to help you.
# * **Red - Green - Refactor** - Your test is passing, awesome! But before you move on, is there anything you can do to make your code more efficient? Or more readable? Or just prettier? Can you reuse functions you have already written?
# * **Not all functions need to return something** - Sometimes we call a function and then test its _effects_, rather than test its _output_.


def pet_shop_name(name)
  return name[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop,ammount_of_cash)
    ammount_of_cash += pet_shop[:admin][:total_cash]
    pet_shop[:admin][:total_cash] = ammount_of_cash
end

def pets_sold(pet_shop)
    return pet_shop[:admin][:pets_sold]

end

def increase_pets_sold(pet_shop,pets_sold)
    pets_sold += pet_shop[:admin][:pets_sold]
    pet_shop[:admin][:pets_sold] = pets_sold
end

def stock_count(pet_shop)
    pet_shop[:pets].length
end

def pets_by_breed(pet_shop,pet_name)
   matched_pets = []
  for pets in pet_shop[:pets]
     if pets[:breed] == pet_name
      matched_pets << pet_name
    end
  end
return matched_pets
end


def find_pet_by_name(pet_shop,pet_name)
  if pet_name == nil
    return nil
  end
  counter = 0
  for pets in pet_shop[:pets]
    if pets[:name] == pet_name
      break
    else
      counter += 1
    end
  end
  pet_name = pet_shop[:pets][counter]
end

def remove_pet_by_name(pet_shop, pet_name)
  counter = 0
  for pets in pet_shop[:pets]
    if pets[:name] == pet_name
       break
     else
       counter += 1
    end
  end
    pet_shop[:pets].delete_at(counter)
end

def add_pet_to_stock(pet_shop, added_pet)
  pet_shop[:pets].insert(0,added_pet)
end

def customer_cash(first_customer)
    first_customer[:cash]
end

def remove_customer_cash(first_customer,amount_to_deduct)
     balance = first_customer[:cash] - amount_to_deduct
     first_customer[:cash] = balance
end

def customer_pet_count(first_customer)
  if first_customer[:pets] == []
     return 0
   else
     return first_customer[:pets].length
  end
end

def add_pet_to_customer(first_customer,pet_to_add)
     first_customer[:pets].insert(0,pet_to_add)
end

def customer_can_afford_pet(second_customer, pet_to_purchase)
    if second_customer[:cash] <= pet_to_purchase[:price]
       return false
     else
       return true
     end
end


def sell_pet_to_customer(pet_shop,pet,first_customer)
  if pet == nil
    return
  end
   for pets_price in pet_shop[:pets]
       if pets_price[:price] <= first_customer[:cash]
        break
        else return
       end
     end
  for pet_search in pet_shop[:pets]
     if pet_search[:name] == pet
       return
     end
   end
  counter = 0
  for pet_search in pet_shop[:pets]
    counter += 1
  end
  pet_shop[:admin][:pets_sold] += 1
  first_customer[:pets].insert(0,pet[:pets])
  counter = -3
  for pets_address in pet_shop[:pets]
      if pets_address != counter
       counter += 1
     else
       break
      end
  end
  p counter
  transaction_amount = pet_shop[:pets][counter][:price]
  pet_shop[:admin][:total_cash] += transaction_amount
  first_customer[:cash] -= transaction_amount
end
