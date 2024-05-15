
# LynxLodge

LodgeLynx je spletna aplikacija, ki tujcem olajšuje iskanje začasnega prebivališča v naši
državi. Aplikacija je mišljena v večini za tuje študente, ki prihajajo v našo državo z željo po
novem znanju ali pa za delavce, ki pridejo na krajše izobraževanje v Slovenijo. Naša aplikacija
predstavlja lep in organiziran prikaz vseh možnih prebivališč v dani/iskani regiji in ker gre za
precej edinstveno situacijo za različne ljudi, se morajo naši uporabniki / obiskovalci pred
vstopom v spletno aplikacijo registrirati.





## Features

Naša aplikacija nudi več storitev. Med njimi tudi:

- Registracija in prijava
- Prikaz vseh prebivališč za določeno regijo oziroma kraj
- Iskanje regije s ključnimi besedami v iskalni vrstici
- Ocenjevanje vsakega prebivališča posebaj
- Komentiranje vsakega prebivališča posebaj
- Najem prebivališča preko naše spletne aplikacije
- Dostop za najemodajalce, da lahko objavijo stanovanja
- Razvrščanje prebivališč glede na najboljše po ceni, notranji opremi, ocenah
ostalih uporabnikov …
- Komunikacija med uporabnikom in najemodajalcem
- Plačilo preko spletnega ponudnika plačil




## TECH

Aplikacija je bila izdelana z Ruby in rails razvojnim okoljem in deluje lokalno.


## Usage

Aplikacija se poganja lokalno. Za uporabo je potrebna inštalacija Rubya:
```javascript
$ sudo apt-get install ruby-full
```
Prepričamo se da je Ruby inštaliran na našem računalniku z ukazom:

```javascript
Ruby --version
```

Inštalirati je potrebno tudi sqlite3:

```javascript
sudo apt-get install sqlite3

```

In test ali je sqlite3 res inštaliran :


```javascript
sqlite3
```

Potreben je tudi rails, katerega dobimo z komando :

```javascript
gem install rails -v 7.1.3.2
```

In preverimo inštalacijo z :

```javascript
Rails --version
```

Ko prenesete našo aplikacijo, jo lahko uporabljate lokalno. Preden pa bo to mogoče je potrebno pognati ukaz :

```javascript
rails db:migrate
```

in pa :

```javascript
rails s
```

da poženete server. Potem bo aplikacija dostopna na localhostu.
## Screenshots

![App Screenshot](https://cdn.discordapp.com/attachments/917832296869031966/1240232384599687199/image.png?ex=6645cfea&is=66447e6a&hm=f8c04be0f48a436b0ec014731819e9551af73a114857b49930ea50c511dd89eb&)


![App Screenshot](https://cdn.discordapp.com/attachments/917832296869031966/1240232596089208862/image.png?ex=6645d01d&is=66447e9d&hm=59ed2a32a17e848da468c22d83fc0b7bdbf3a4292ee646a85570546cca48aff7&)



![App Screenshot](https://cdn.discordapp.com/attachments/917832296869031966/1240232782072905770/image.png?ex=6645d049&is=66447ec9&hm=2a5a2bfce8d4f983cfed364f1a8d059f1e831b798cbd7d91949d4417f111dbfd&)



![App Screenshot](https://cdn.discordapp.com/attachments/917832296869031966/1240232966848909322/image.png?ex=6645d075&is=66447ef5&hm=d9568772b33d58d69b4b9688ab4efde04c3968d9295044f347b633c4486ffecf&)



![App Screenshot](https://cdn.discordapp.com/attachments/917832296869031966/1240233089020723210/image.png?ex=6645d092&is=66447f12&hm=57895a0cb8f07bc71e4c4f2c2f89983f37b62a648a10ebd3b9d54e88bcf5cc0a&)



## Authors

- [@hojnik15](https://www.github.com/hojnik15)
- [@Lovroo](https://github.com/Lovroo)

