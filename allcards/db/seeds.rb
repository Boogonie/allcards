# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CreditCard.create([
  {
    name: "Capital One® Quicksilver® Cash Rewards Credit Card",
    card_art: "https://c1.nerdwallet.com/images/11718_M.jpg",
    issuer: "Capital One",
    annual_fee: 0,
    standard_reward_rate: 1.5,
    signup_bonus: 100,
    details: "<ul><li>One-time $100 cash bonus after you spend $500 on purchases within the first 3 months</li>
    <li>Earn unlimited 1.5% cash back on every purchase, every day</li>
    <li>No rotating categories or sign ups needed to earn cash rewards; plus, cash back doesn’t expire
    and there’s no limit to how much you can earn</li>
    <li>0% intro APR on purchases until November 2016; 13.24%-23.24% variable APR after that</li>
    <li>Balance transfers also have a 0% intro APR until November 2016; 13.24%-23.24% variable APR after that;
    a 3% fee applies to each balance transferred</li>
    <li>Pay no annual fee or foreign transaction fees</li></ul>",
    regular_purchase_apr: "13.24% - 23.24% (Variable)",
    intro_purchase_apr: "0% intro on purchases until November 2016",
    intro_bt_apr: "0% intro on balance transfers until November 2016",
    credit_needed: "Excellent/Good"
  },

  {
    name: "2Capital One® Quicksilver® Cash Rewards Credit Card2",
    card_art: "https://c1.nerdwallet.com/images/11718_M.jpg",
    issuer: "Capital One",
    annual_fee: 0,
    standard_reward_rate: 1.5,
    signup_bonus: 100,
    details: "<ul><li>One-time $100 cash bonus after you spend $500 on purchases within the first 3 months</li>
    <li>Earn unlimited 1.5% cash back on every purchase, every day</li>
    <li>No rotating categories or sign ups needed to earn cash rewards; plus, cash back doesn’t expire
    and there’s no limit to how much you can earn</li>
    <li>0% intro APR on purchases until November 2016; 13.24%-23.24% variable APR after that</li>
    <li>Balance transfers also have a 0% intro APR until November 2016; 13.24%-23.24% variable APR after that;
    a 3% fee applies to each balance transferred</li>
    <li>Pay no annual fee or foreign transaction fees</li></ul>",
    regular_purchase_apr: "13.24% - 23.24% (Variable)",
    intro_purchase_apr: "0% intro on purchases until November 2016",
    intro_bt_apr: "0% intro on balance transfers until November 2016",
    credit_needed: "Excellent/Good"
  }
])
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')