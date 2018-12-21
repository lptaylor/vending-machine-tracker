describe 'As a user' do
  it 'user can see all snacks for a vending machine and prices' do
    sal = Owner.create!(name: "Sal")
    mach_1 = Machine.create!(location: "Turing", owner_id: sal.id)
    mach_1.snacks.create(name: "Cheetos", price: 5, machine_id: mach_1.id)
    mach_1.snacks.create(name: "Freetos", price: 6, machine_id: mach_1.id)

    visit machine_path(mach_1)

    expect(page).to have_content("Cheetos are 5 dollars")
    expect(page).to have_content("Freetos are 6 dollars")
  end

  it 'shows average price' do
    sal = Owner.create!(name: "Sal")
    mach_1 = Machine.create!(location: "Turing", owner_id: sal.id)
    mach_1.snacks.create(name: "Cheetos", price: 2, machine_id: mach_1.id)
    mach_1.snacks.create(name: "Freetos", price: 6, machine_id: mach_1.id)

    visit machine_path(mach_1)
    expect(page).to have_content("The average price for snacks is 4.0 dollars")
  end
end
