import requests

#home
r = requests.get('https://werewolf-mafia.heroku.com/static_pages/home')
print(r.text)

#help
r = requests.get('https://werewolf-mafia.heroku.com/static_pages/help')
print(r.text)

#about
r = requests.get('https://werewolf-mafia.heroku.com/static_pages/about')
print(r.text)


#creating a user
payload = {'user[name]' : 'Alpha Bet', 'user[email' : 'alphabet@email.wm.edu', 'user[password]' : 'abcdefg', 'user[password_confirmation]': 'abcdefg', 'commit' : 'Create my account' }

r = requests.post('https://werewolf-mafia.herokuapp.com/users', data=payload)

print(r.text)

