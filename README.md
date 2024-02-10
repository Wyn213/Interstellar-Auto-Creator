# Interstellar-Auto-Creator

# execute code
```bash
bash <(curl -s https://raw.githubusercontent.com/Wyn213/Interstellar-Auto-Creator/main/main.sh)
```

## get your Auth Bearar

## prerequisites

- jq
- docker
- curl (listen its sometimes not installed

### with inspect element/Eruda+termoxy/interstellar
- login to docker with the account to create the repos on
- open inspect element and go to network
- reload (on the page https://hub.docker.com)
- will look kinda like this <br><img width="383" alt="Screenshot 2024-02-09 164816" src="https://github.com/Wyn213/Interstellar-Auto-Creator/assets/156633596/9ac0d4d9-fc25-4d18-8e29-5ddf604d1a38">
- click on the little input box <br>![image](https://github.com/Wyn213/Interstellar-Auto-Creator/assets/156633596/46607b12-ed5b-4ab1-8eb4-68217b47d9ef)
- type "repositories/"
- and you should see on with your "username?page_size" on it click it and find the "Authorization" and copy that (dont copy the "Bearer" at the start its handled in the script)
### Termoxy (eruda)
- open [the main termoxy link](https://termoxyfake.vercel.com) or find one (or make one)
- click on the eruda button on the bottom
- type ```hub.docker.com``` in the url bar and press enter
- login into docker (you can't use google or github)
- open eruda and go to network tab
- click on a random log and find "Authorization" (if its not there find a diffrent log)
- copy it (dont copy "Bearer" at the start

## Running on Replit

- make a bash repl
- then run this script
```bash
soon
```
