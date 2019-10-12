user = User.first || User.create(first_name:'Kyle', last_name:'Hughes', email:'blinded93@gmail.com', password:'password')

household = user.household || user.create_household(name: 'Hughes', address1:'12625 33rd Ave NE', address2:'B106', city:'Seattle', state:'WA', zip_code:98125)

list = household.lists.empty? ? household.lists.create(name:'Groceries') : household.lists.first

%w[Cheese Milk Steak Butter Liver Salsa].each{ |i| list.items.create(name: i) }

[
  {
    company: 'T-Mobile',
    amount: 14000,
    account_number: 234234252656,
    recurring: true,
    url: 'www.my.tmobile.com',
    paid: false,
    category: 'phone',
    due_date: Date.new(2019, 10, 25),
    nickname: 'Cell Phones',
    frequency: 'monthly'
  },
  {
    company: 'Wave G',
    amount: 8000,
    account_number: 9809879,
    recurring: true,
    url: 'www.waveg.com',
    paid: false,
    category: 'internet',
    due_date: Date.new(2019, 10, 15),
    nickname: 'Internet',
    frequency: 'monthly'
  },
  {
    company: 'Rent',
    amount: 205000,
    account_number: 56456645,
    recurring: true,
    url: 'www.solara.com',
    paid: true,
    category: 'housing',
    due_date: Date.new(2019, 10, 1),
    nickname: 'Rent',
    frequency: 'monthly'
  }
].each{ |bill| household.bills.create(bill) }

[
  {
    name:'Recycling',
    due_date: Date.new(2019, 10, 14),
    completed: false,
    frequency: 'bi-weekly',
    recurring: true
  },
  {
    name:'Trash',
    due_date: Date.new(2019, 10, 13),
    completed: false,
    frequency: 'bi-weekly',
    recurring: true
  },
  {
    name:'Compost',
    due_date: Date.new(2019, 10, 10),
    completed: true,
    frequency: 'bi-weekly',
    recurring: true
  }
].each{ |task| household.tasks.create(task) }