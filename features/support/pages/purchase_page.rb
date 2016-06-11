class PurchasePage
  include PageObject

  DEFAULT_INFO ||= { first_name: Faker::Name.first_name,
                     last_name:  Faker::Name.last_name,
                     cc_type:    'Visa',
                     cc_number:  Luhnacy.visa,
                     exp_mm:     '10',
                     exp_yy:     '2010' }

  text_field(:first_name, name: 'passFirst0')
  text_field(:last_name, name: 'passLast0')
  text_field(:credit_card_number, name: 'creditnumber')
  select_list(:credit_card_type, name: 'creditCard')
  select_list(:exp_mm, name: 'cc_exp_dt_mn')
  select_list(:exp_yy, name: 'cc_exp_dt_yr')
  button(:buy_flights, name: 'buyFlights')
  image(:flight_confirmation, src: '/images/masts/mast_confirmation.gif')

  page_url('http://newtours.demoaut.com/mercurypurchase.php')

  def buy_flights(options={})
    options         = DEFAULT_INFO.merge(options)
    self.first_name = options.fetch(:first_name)
    self.last_name  = options.fetch(:last_name)
    self.credit_card_type = options.fetch(:cc_type)
    self.credit_card_number = options.fetch(:cc_number)
    self.exp_mm = options.fetch(:exp_mm)
    self.exp_yy = options.fetch(:exp_yy)
    buy_flights_element.click
  end

  def has_bought_flight?
    wait_until { flight_confirmation_element.visible? }
    flight_confirmation_element.visible?
  end

end