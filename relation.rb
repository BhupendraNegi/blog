

user: has_many profiles
user: has_many reward_points_transactions
(elitmus)reward_point: belongs_to reward_points_transactions

admins has_many giftcards
giftcards belongs_to admin
gitfcards has_many gift_cards_codes




1000 rs elitmus cash (reward_point)

rs 1200 ph test for  1200 elitmus

ELITMUS_CASH_FOR_PH = 1200
def reward_elitmus_cash (user_id)
    RewardPointTransaction.trasnsaction do
        reward_point = reward_point.new(points: ELITMUS_CASH_FOR_PH)
        reward_point_transaction.new(rewrad_id: reward_point.id, user_id: user_id, status: :credit)
        reward_point.save!
        reward_point_transaction.save!
    end
end


User.joins(:reward_point_transactions).where('reward_point_transactions.status=credit')


user has_many :profiles
profile has_one graduation_record

User.joins(profiles: :)
select * from users inner_joins profiles on users.id = profiles.user_id
inner_joins graduation_records on profiles.id = graduation_records.profile_id
where graduation_records.score > 9;

user
john 90
abv 80
hy 70


colleges college_clients



select * from users 



