class Bet < ApplicationRecord
  belongs_to :user
  belongs_to :contest

  def update_balance
    user.balance = user.balance - amount
    user.save
  end

  def payout
    if status == "win"
      user.balance = user.balance + (amount * 1.909)
    end
    if status == "push"
      user.balance = user.balance + amount
    end
    user.save
  end

  def update_results
    if pick == "over" && contest.real_temp > contest.line
      status = "win"
    elsif pick == "over" && contest.real_temp < contest.line
      status = "lose"
    elsif pick == "under" && contest.real_temp > contest.line
      status = "lose"
    elsif pick == "under" && contest.real_temp < contest.line
      status = "win"
    elsif contest.real_temp == contest.line
      status = "push"
    else
      status = "pending"
    end
    update(status: status)
    payout
  end
end
