
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

![App Screenshot](https://i.ibb.co/8bL2BMR/image1.png)


![App Screenshot](https://i.ibb.co/8snKSbm/image2.png)



![App Screenshot](https://i.ibb.co/vDxSPf2/image3.png)



![App Screenshot](https://i.ibb.co/4f03pwk/image4.png)



![App Screenshot](https://i.ibb.co/YyTg1fg/image5.png)



## Authors

- [@hojnik15](https://www.github.com/hojnik15)
- [@Lovroo](https://github.com/Lovroo)

