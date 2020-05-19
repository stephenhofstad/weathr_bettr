User.create!(name: "Dirk Diggler", email: "dirk@example.com", balance: 600, password: "password")
User.create!(name: "Reed Rothchild", email: "reed@example.com", balance: 900, password: "password")
User.create!(name: "Amber Waves", email: "amber@example.com", balance: 200, password: "password")

Contest.create!(date: "05/19/2020", game: "High Temp", win: "-110", line: 65, real_temp: "")
Contest.create!(date: "05/20/2020", game: "High Temp", win: "-110", line: 66, real_temp: "")
Contest.create!(date: "05/21/2020", game: "High Temp", win: "-110", line: 67, real_temp: "")
Contest.create!(date: "05/26/2020", game: "High Temp", win: "-110", line: 65, real_temp: "")
Contest.create!(date: "05/27/2020", game: "High Temp", win: "-110", line: 66, real_temp: "")
Contest.create!(date: "05/28/2020", game: "High Temp", win: "-110", line: 67, real_temp: "")

Bet.create!(contest_id: 1, user_id: 1, amount: 100, status: "pending", pick: "over")
Bet.create!(contest_id: 2, user_id: 2, amount: 20, status: "pending", pick: "over")
Bet.create!(contest_id: 2, user_id: 3, amount: 50, status: "pending", pick: "over")
Bet.create!(contest_id: 3, user_id: 1, amount: 10, status: "pending", pick: "over")
Bet.create!(contest_id: 3, user_id: 2, amount: 70, status: "pending", pick: "over")
