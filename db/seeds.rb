User.create!(first_name: "Dirk", last_name: "Diggler", address: "123 circle drive", email: "dirk@example.com", balance: 600, password: "password", phone: "555-5555")
User.create!(first_name: "Reed", last_name: "Rothchild", address: "600 triangle road", email: "reed@example.com", balance: 900, password: "password", phone: "555-6666")
User.create!(first_name: "Amber", last_name: "Waves", address: "3200 square street", email: "amber@example.com", balance: 200, password: "password", phone: "555-7777")

Contest.create!(date: "05/26/2020", time: "23:59", win: "110", line: "65")
Contest.create!(date: "05/27/2020", time: "23:59", win: "110", line: "66")
Contest.create!(date: "05/28/2020", time: "23:59", win: "110", line: "67")

Bet.create!(contest_id: 1, user_id: 1, amount: 100, status: "pending")
Bet.create!(contest_id: 2, user_id: 2, amount: 20, status: "pending")
Bet.create!(contest_id: 2, user_id: 3, amount: 50, status: "pending")
Bet.create!(contest_id: 3, user_id: 1, amount: 10, status: "pending")
Bet.create!(contest_id: 3, user_id: 2, amount: 70, status: "pending")
