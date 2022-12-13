-- This file is to bootstrap a database for the CS3200 project. 

-- Create a new database.  You can change the name later.  You'll
-- need this name in the FLASK API file(s),  the AppSmith 
-- data source creation.
create database cool_db;

-- Via the Docker Compose file, a special user called webapp will 
-- be created in MySQL. We are going to grant that user 
-- all privilages to the new database we just created. 
-- TODO: If you changed the name of the database above, you need 
-- to change it here too.
grant all privileges on cool_db.* to 'webapp'@'%';
flush privileges;

-- Move into the database we just created.
-- TODO: If you changed the name of the database above, you need to
-- change it here too. driver_license
use cool_db;

-- Put your DDL 
CREATE TABLE Customer(
    customerId INT NOT NULL UNIQUE,
    email varchar(50),
    firsName varchar(50),
    lastName varchar(50),
    driver_license varchar(50) NOT NULL,
    street varchar(50),
    city varchar(50),
    states varchar(50),
    zip varchar(50),
    PRIMARY KEY(customerId)
);

insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (1, 'cutton0@over-blog.com', 'Chrystel', 'Utton', '1CBaacNckDJB4C894S9kAFq1kiitAUtBTB', '949 Dixon Lane', 'Trieste', '64997-050');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (2, 'ggledhall1@rakuten.co.jp', 'Gennie', 'Gledhall', '1Gb5nJgph2TxYqLoAGRr84bzauA8yor65E', '96312 Upham Parkway', 'Kadipaten', '58118-0202');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (3, 'postrich2@chicagotribune.com', 'Papagena', 'Ostrich', '19j5NBX6bNhzxYydPN1wT1bjDPp7dqLMqr', '9 Thierer Pass', 'Binalonan', '51257-640');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (4, 'mvolcker3@wikimedia.org', 'Marta', 'Volcker', '12VmcPE1mm3dzUyqgnhepXwjKiNQumFoDc', '86992 Clyde Gallagher Place', 'Sallins', '65293-006');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (5, 'mmacbeth4@pen.io', 'Marty', 'Macbeth', '1AT2TjV9YfoPRxebfeCiyFakdSQv9UgaNf', '7182 Erie Hill', 'Temeke', '0440-8055');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (6, 'jchorlton5@icq.com', 'Jordan', 'Chorlton', '1LA8TqFnKGX527NnwJwd3TYan1FkCH57zf', '3203 Arrowood Alley', 'Nālūt', '31722-280');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (7, 'gelkington6@creativecommons.org', 'Gale', 'Elkington', '1P45BPRkJVVoGtaWP8yvwa1vsjKm5BatrX', '07300 Green Avenue', 'Tres Isletas', '55910-951');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (8, 'ctoghill7@a8.net', 'Chuck', 'Toghill', '12k7aDWrta1FgKcMDfpkh9uMYTVLJpdaJD', '72359 Sage Trail', 'Quxia', '42507-298');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (9, 'mdesousa8@nba.com', 'Marty', 'DeSousa', '1L4w2Dwst7QwPaEqtvxdmNGEQ1mXYHrzzx', '9 Oak Way', 'Chiara', '58118-0129');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (10, 'rkench9@pcworld.com', 'Rosalinda', 'Kench', '123BohVZkarK8LZmL5L1jUvPMv6oJXJ83i', '2 1st Park', 'Issenye', '49348-752');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (11, 'fbillisona@skyrock.com', 'Fredelia', 'Billison', '1KfZJ4HnMYyjecggBkX57i9ZER4xPNkKvd', '28245 Karstens Lane', 'Fada N''gourma', '63941-317');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (12, 'alubmanb@prweb.com', 'Alphonse', 'Lubman', '1QHbngfUjCwEqoKYW8gEXy5Kz2ukV281Qe', '557 Marquette Crossing', 'Vyshchetarasivka', '0173-0843');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (13, 'ttyrrellc@rambler.ru', 'Tim', 'Tyrrell', '1HaW3T5SkMKbZ3dhF2vCHS6GcRKZsAdgkd', '8896 Pond Junction', 'Ostrogozhsk', '49999-834');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (14, 'ttyrrellc@rambler.ru', 'Tim', 'Tyrrell', '1HaW3T5SkMKbZ3dhF2vCHS6GcRKZsAdgkd', '8896 Pond Junction', 'Ostrogozhsk', '49999-834');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (15, 'apeglere@instagram.com', 'Amara', 'Pegler', '1HLbyD3eot5TdA1FpuKcu2TkEtiYGKPhVA', '60 Ridgeway Street', 'Góis', '53499-6371');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (16, 'cpeplawf@mtv.com', 'Colin', 'Peplaw', '19TVbq2qpLED52NqpK56SfAQAYzTEmPzDT', '02 Hagan Hill', 'Oslob', '65974-163');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (17, 'bsahnowg@sfgate.com', 'Bryn', 'Sahnow', '1Hn6FHr61qnxSDqe3S6oeRRWpnJb9L2vkR', '9438 Delaware Court', 'Anniston', '62011-0060');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (18, 'othomannh@hatena.ne.jp', 'Orran', 'Thomann', '1ESpk5dpk8FA3FADH7P5nShKA6taY15Seg', '30513 Porter Court', 'Shahrak', '59779-971');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (19, 'hdurtneli@indiegogo.com', 'Hirsch', 'Durtnel', '14UbnVvaULzS97LZnw6GrXM2y8AU3RzphW', '745 Fordem Junction', 'Chengguan', '0054-0088');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (20, 'afernehoughj@yale.edu', 'Alisun', 'Fernehough', '13PbWQYJ1W7webyKF1CW6r67vVbQP9gZDB', '3 Sommers Hill', 'Jomda', '61657-0967');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (21, 'eupstonk@multiply.com', 'Ediva', 'Upston', '1aWHRFYWhkfWMQc1u71t4H3SKRmSR1LGe', '94 Sunbrook Terrace', 'Marne-la-Vallée', '43742-0294');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (22, 'dosmonl@123-reg.co.uk', 'Donall', 'Osmon', '1Yq2LkppLFod7h64WiTtPJuDXgWEi2ddQ', '37 Oriole Terrace', 'Anuradhapura', '0074-3079');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (23, 'bpenhearowm@vinaora.com', 'Bennie', 'Penhearow', '1A1agy3xafkK2giLJ2HdseTL7CAqk9xain', '00870 Mesta Way', 'Grujugan', '42643-101');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (24, 'hmercyn@pagesperso-orange.fr', 'Hildy', 'Mercy', '1Pff5ZVxZAZ8EcAKg7mcNCSLWh4C6tj5A3', '1 Meadow Valley Street', 'Gjinkar', '0220-9313');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (25, 'jiddyo@parallels.com', 'Jasen', 'Iddy', '12mbX5uQ4rF7rFLoNPFdjM8Kfvrm7mdhDB', '767 Golden Leaf Drive', 'Hetian', '64980-181');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (26, 'kcoyshp@salon.com', 'Kati', 'Coysh', '153aCLWZuDzXu3hjWEccP6eaXXKP7nmc9E', '72089 South Crossing', 'Rulong', '34645-5008');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (27, 'fbellq@harvard.edu', 'Fritz', 'Bell', '18hNRS3P8vYYyEcUrr1wuCFPMJ22VrUSut', '974 Bashford Point', 'Baojia', '0591-3500');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (28, 'dalpinr@usatoday.com', 'Donalt', 'Alpin', '17GEv8CCn5s5eFawxjTeLc7NXypGZrPajj', '2 Northview Pass', 'Kozloduy', '55154-3878');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (29, 'rbeadhams@slideshare.net', 'Roxanna', 'Beadham', '16Zy4M8DYwZPwCNBc3SBnhAF3vhpsZyatu', '6567 Lindbergh Avenue', 'Etten-Leur', '65862-044');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (30, 'eshiret@people.com.cn', 'Ebenezer', 'Shire', '15EiujLSaSLikKrHpudtH4sqE7sz5r7iTk', '622 Longview Junction', 'Rezé', '16590-177');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (31, 'gbeausangu@goo.gl', 'Gwendolin', 'Beausang', '1HrCsbT1p35zqraCMSCUBNm6zyr394PowL', '65598 Bunker Hill Crossing', 'Marston', '0904-6087');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (32, 'swoollheadv@comcast.net', 'Shalom', 'Woollhead', '1FTRYMVrvvHSynJRAehmc6QFFUoQkhcoXD', '12 Village Terrace', 'Kup', '47682-502');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (33, 'slewteyw@is.gd', 'Shanta', 'Lewtey', '1PSDxX9HpifkShMBuyrAknYByrNQJ5xVuV', '6882 Bluejay Terrace', 'Osilnica', '33332-014');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (34, 'mberwickx@independent.co.uk', 'Mab', 'Berwick', '1Cv9RpWEwyMEVUy4ssxydvFEBj4LcfG9c8', '351 Sunnyside Pass', 'Novorozhdestvenskaya', '13733-013');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (35, 'bcrockeny@domainmarket.com', 'Barnebas', 'Crocken', '15q8ZZiFLihLy678gkJ24fVZmWznseap9Y', '30 Northview Avenue', 'Rio', '63548-0046');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (36, 'dthreadgoldz@paginegialle.it', 'Devan', 'Threadgold', '1NjipiCZoLBPEWXPnuqghvDtsuwPJ7dHf8', '3 Oneill Street', 'Dūkštas', '17089-452');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (37, 'ctranckle10@list-manage.com', 'Clarie', 'Tranckle', '1GuNhi9zeFU92Gf8JQv128Aakuj3EiSkW1', '595 Kenwood Terrace', 'Marull', '0066-0510');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (38, 'ilownes11@gov.uk', 'Inna', 'Lownes', '1BdcjPftR6p4DnrFBY1pWpnkk7QE3sfGw5', '83878 Jenna Alley', 'Pieńsk', '68084-592');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (39, 'bgertray12@1688.com', 'Britni', 'Gertray', '1BEe9NA9LLkrUBvWx6fQxJSWuWPEKsJHwx', '5 Superior Junction', 'Tuohua', '24236-289');
insert into Customer (customerId, email, firsName, lastName, driver_license, street, city, zip) values (40, 'mwarland13@opensource.org', 'Matteo', 'Warland', '1FD6REQP7yBC7GtoRM5qFN8uZU1ec4XAu1', '83185 Rowland Alley', 'Isla Pucú', '0409-1749');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (41, 'vdonke14@homestead.com', 'Valaria', 'Donke', '06 Lillian Trail', 'Hudong', null, '64764-580');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (42, 'wgeaveny15@bing.com', 'Winny', 'Geaveny', '727 Doe Crossing Place', 'Houxi', null, '63323-325');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (43, 'hboyet16@pagesperso-orange.fr', 'Hanson', 'Boyet', '242 Nancy Trail', 'Tatarka', null, '30056-006');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (44, 'rohaire17@eepurl.com', 'Rosa', 'O''Haire', '0 Shasta Center', 'Zouma', null, '21130-519');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (45, 'jbaress18@constantcontact.com', 'Joela', 'Baress', '0197 Sutteridge Alley', 'Nanterre', 'Île-de-France', '41616-221');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (46, 'ygrindle19@reddit.com', 'Yevette', 'Grindle', '3097 Lawn Point', 'Gambo', null, '64661-811');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (47, 'mquartly1a@mozilla.org', 'Madlin', 'Quartly', '14 Nelson Park', 'Huangmao', null, '50390-702');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (48, 'tmccreery1b@fotki.com', 'Timmi', 'McCreery', '3155 Anderson Terrace', 'Zhangcun', null, '0172-5032');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (49, 'ocarmont1c@webs.com', 'Odie', 'Carmont', '96 Beilfuss Court', 'Hongqi', null, '21695-013');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (50, 'hskoughman1d@booking.com', 'Hadrian', 'Skoughman', '88 Hazelcrest Street', 'Kočevje', null, '0264-7780');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (51, 'credwin1e@symantec.com', 'Crosby', 'Redwin', '698 Katie Pass', 'Altıağac', null, '42023-138');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (52, 'amcgarrahan1f@reference.com', 'Ammamaria', 'McGarrahan', '67309 Monument Park', 'Nierumai', null, '49349-514');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (53, 'jshortcliffe1g@purevolume.com', 'Jackie', 'Shortcliffe', '4 Eggendart Alley', 'Kiiminki', null, '50102-100');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (54, 'credmire1h@webs.com', 'Chrysler', 'Redmire', '532 6th Trail', 'Kipen’', null, '0781-3125');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (55, 'lgreenland1i@army.mil', 'Leticia', 'Greenland', '8 Westend Lane', 'San Rafael', 'Michoacan De Ocampo', '60512-8029');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (56, 'jaikenhead1j@wikimedia.org', 'Janella', 'Aikenhead', '59305 Kipling Park', 'Baška Voda', null, '55154-4250');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (57, 'lprestige1k@cbslocal.com', 'Lowell', 'Prestige', '196 Eagle Crest Circle', 'Donghu', null, '0187-5182');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (58, 'gleggett1l@list-manage.com', 'Gussy', 'Leggett', '10844 Sycamore Point', 'Zijin', null, '47219-252');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (59, 'atresler1m@ovh.net', 'Aurlie', 'Tresler', '2156 Buena Vista Street', 'Centre de Flacq', null, '76119-1440');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (60, 'gwraggs1n@house.gov', 'Garrard', 'Wraggs', '0 Crowley Terrace', 'Ōi', null, '43611-006');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (61, 'nlucus1o@virginia.edu', 'Nowell', 'Lucus', '8 Service Crossing', 'Markušica', null, '59886-354');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (62, 'wboots1p@craigslist.org', 'Warde', 'Boots', '56 Susan Court', 'Öldziyt', null, '50967-620');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (63, 'vmorillas1q@simplemachines.org', 'Vale', 'Morillas', '700 8th Center', 'Foso', null, '0781-1183');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (64, 'jretchless1r@alexa.com', 'Jammie', 'Retchless', '8 Bunting Point', 'Fengjiang', null, '49348-793');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (65, 'bbudding1s@jalbum.net', 'Bethena', 'Budding', '1548 Ludington Park', 'Aizkraukle', null, '42192-124');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (66, 'edimaria1t@mail.ru', 'Elizabeth', 'Di Maria', '0 Red Cloud Road', 'Rancabugel', null, '36800-982');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (67, 'gpinchin1u@yelp.com', 'Gil', 'Pinchin', '3894 Hazelcrest Center', 'Vrbovec', null, '0093-8943');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (68, 'esoppeth1v@trellian.com', 'Elicia', 'Soppeth', '249 Farwell Terrace', 'Sinargalih', null, '76214-004');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (69, 'kconrard1w@qq.com', 'Katha', 'Conrard', '93 Namekagon Hill', 'Aldeia da Mata', 'Portalegre', '64525-0549');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (70, 'aagron1x@sitemeter.com', 'Alfy', 'Agron', '867 Fremont Park', 'Shuitianzhuang', null, '0456-2613');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (71, 'pbough1y@desdev.cn', 'Pier', 'Bough', '758 Dahle Way', 'Noveleta', null, '58118-1638');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (72, 'fmcgilbon1z@sourceforge.net', 'Fidole', 'McGilbon', '615 Packers Center', 'Berëza', null, '23635-582');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (73, 'lnote20@indiatimes.com', 'Lissy', 'Note', '6 Helena Way', 'Yunga', null, '76166-002');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (74, 'zkeigher21@bloglovin.com', 'Zena', 'Keigher', '4 American Ash Hill', 'Seririt', null, '41520-225');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (75, 'vcompfort22@drupal.org', 'Vince', 'Compfort', '1011 Wayridge Way', 'Horta', 'Ilha do Faial', '0378-1809');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (76, 'rwoltman23@yahoo.co.jp', 'Robbyn', 'Woltman', '64875 Russell Junction', 'Tabuc Pontevedra', null, '66758-044');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (77, 'ldrummer24@gnu.org', 'Louis', 'Drummer', '041 Londonderry Alley', 'Hamilton', null, '49349-222');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (78, 'kruddock25@w3.org', 'Kathlin', 'Ruddock', '07283 Paget Court', 'Morelos', 'Michoacan De Ocampo', '0378-4297');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (79, 'pspilling26@vk.com', 'Patricio', 'Spilling', '0546 Holmberg Point', 'Stockholm', 'Stockholm', '49693-2001');
insert into Customer (customerId, email, firsName, lastName, street, city, states, zip) values (80, 'rcoppenhall27@unesco.org', 'Roderic', 'Coppenhall', '84077 Donald Center', 'Centar Župa', null, '0378-1666');

CREATE TABLE Insurance(
    companyId INT NOT NULL UNIQUE, 
    companyName varchar(50),
    PRIMARY KEY(companyId)
);

insert into Insurance (companyId, companyName) values (1, 'Buzzdog');
insert into Insurance (companyId, companyName) values (2, 'Chatterpoint');
insert into Insurance (companyId, companyName) values (3, 'Vipe');
insert into Insurance (companyId, companyName) values (4, 'Trunyx');
insert into Insurance (companyId, companyName) values (5, 'Jabbersphere');
insert into Insurance (companyId, companyName) values (6, 'Wikibox');
insert into Insurance (companyId, companyName) values (7, 'Thoughtbridge');
insert into Insurance (companyId, companyName) values (8, 'Rhynoodle');
insert into Insurance (companyId, companyName) values (9, 'Wikibox');
insert into Insurance (companyId, companyName) values (10, 'Flipbug');
insert into Insurance (companyId, companyName) values (11, 'Brainsphere');
insert into Insurance (companyId, companyName) values (12, 'Bubblemix');
insert into Insurance (companyId, companyName) values (13, 'Skajo');
insert into Insurance (companyId, companyName) values (14, 'Kwilith');
insert into Insurance (companyId, companyName) values (15, 'Reallinks');
insert into Insurance (companyId, companyName) values (16, 'Meemm');
insert into Insurance (companyId, companyName) values (17, 'Centidel');
insert into Insurance (companyId, companyName) values (18, 'Rhyzio');
insert into Insurance (companyId, companyName) values (19, 'Mybuzz');
insert into Insurance (companyId, companyName) values (20, 'Skaboo');
insert into Insurance (companyId, companyName) values (21, 'Twinte');
insert into Insurance (companyId, companyName) values (22, 'Oyope');
insert into Insurance (companyId, companyName) values (23, 'Wikizz');
insert into Insurance (companyId, companyName) values (24, 'Skalith');
insert into Insurance (companyId, companyName) values (25, 'Fadeo');
insert into Insurance (companyId, companyName) values (26, 'Skimia');
insert into Insurance (companyId, companyName) values (27, 'Rhyzio');
insert into Insurance (companyId, companyName) values (28, 'Zoonoodle');
insert into Insurance (companyId, companyName) values (29, 'Zoomzone');
insert into Insurance (companyId, companyName) values (30, 'Twitterwire');
insert into Insurance (companyId, companyName) values (31, 'Jabbercube');
insert into Insurance (companyId, companyName) values (32, 'Edgewire');
insert into Insurance (companyId, companyName) values (33, 'Trilith');
insert into Insurance (companyId, companyName) values (34, 'Thoughtstorm');
insert into Insurance (companyId, companyName) values (35, 'Centidel');
insert into Insurance (companyId, companyName) values (36, 'BlogXS');
insert into Insurance (companyId, companyName) values (37, 'Tazz');
insert into Insurance (companyId, companyName) values (38, 'Skaboo');
insert into Insurance (companyId, companyName) values (39, 'Jaxbean');
insert into Insurance (companyId, companyName) values (40, 'Buzzbean');

CREATE TABLE ReapirShop(
    storeId INT, 
    street varchar(50),
    city varchar(50),
    zip varchar(50),
    PRIMARY KEY(storeId) 
);

insert into ReapirShop (storeId, street, city, zip) values (1, '73 Brickson Park Park', 'Shenglilu', '0591-3760');
insert into ReapirShop (storeId, street, city, zip) values (2, '4488 Swallow Avenue', 'Kabanga',  '55301-242');
insert into ReapirShop (storeId, street, city, zip) values (3, '8 Susan Place', 'Kaffrine',  '0781-5123');
insert into ReapirShop (storeId, street, city, zip) values (4, '86132 Portage Circle', 'Governador Valadares',  '36987-1347');
insert into ReapirShop (storeId, street, city, zip) values (5, '54051 Nobel Hill', 'Bonpland', '76472-1145');
insert into ReapirShop (storeId, street, city, zip) values (6, '94 Dottie Point', 'Ivanishchi',  '68084-229');
insert into ReapirShop (storeId, street, city, zip) values (7, '819 Birchwood Trail', 'Arue', '76420-742');
insert into ReapirShop (storeId, street, city, zip) values (8, '037 Manufacturers Alley', 'Yangliu', '10424-156');
insert into ReapirShop (storeId, street, city, zip) values (9, '63431 Little Fleur Lane', 'Yonghe', '60709-106');
insert into ReapirShop (storeId, street, city, zip) values (10, '96 Lunder Street', 'Sobreda',  '0187-2204');
insert into ReapirShop (storeId, street, city, zip) values (11, '82418 Stephen Lane', 'Tangwu','43353-908');
insert into ReapirShop (storeId, street, city, zip) values (12, '99115 Meadow Ridge Parkway', 'Sobue', '43742-0486');
insert into ReapirShop (storeId, street, city, zip) values (13, '2694 Rowland Parkway', 'Fratar', '49349-605');
insert into ReapirShop (storeId, street, city, zip) values (14, '61727 Del Sol Road', 'Jaba‘', '59078-032');
insert into ReapirShop (storeId, street, city, zip) values (15, '36836 Harper Plaza', 'Aviúges', '52125-488');
insert into ReapirShop (storeId, street, city, zip) values (16, '45750 Brickson Park Center', 'Bern', '0440-7183');
insert into ReapirShop (storeId, street, city, zip) values (17, '4 Morning Point', '‘Abasān al Kabīrah', '51523-023');
insert into ReapirShop (storeId, street, city, zip) values (18, '18 Burning Wood Lane', 'Armopa','48951-7014');
insert into ReapirShop (storeId, street, city, zip) values (19, '0836 Eastwood Pass', 'Kamenka','66336-085');
insert into ReapirShop (storeId, street, city, zip) values (20, '256 Brickson Park Drive', 'Barberena','0268-1611');
insert into ReapirShop (storeId, street, city, zip) values (21, '6676 Rowland Point', 'Dukhovnitskoye', '54569-2299');
insert into ReapirShop (storeId, street, city, zip) values (22, '213 Coolidge Hill', 'Chuoyuan','68151-1738');
insert into ReapirShop (storeId, street, city, zip) values (23, '1 Dahle Road', 'Yongxing Chengguanzhen',  '55154-6127');
insert into ReapirShop (storeId, street, city, zip) values (24, '1322 Daystar Hill', 'Tuusula', '63667-954');
insert into ReapirShop (storeId, street, city, zip) values (25, '78 Arapahoe Center', 'Al Khirāb', '54868-5650');
insert into ReapirShop (storeId, street, city, zip) values (26, '3012 Old Shore Point', 'Río Pico', '0781-1884');
insert into ReapirShop (storeId, street, city, zip) values (27, '3 Tennessee Trail', 'Quilmes', '16590-327');
insert into ReapirShop (storeId, street, city, zip) values (28, '212 Namekagon Pass', 'Huaqiao', '0268-6694');
insert into ReapirShop (storeId, street, city, zip) values (29, '0 Melvin Plaza', 'Hongor', '24236-361');
insert into ReapirShop (storeId, street, city, zip) values (30, '16 Debs Park', 'Parintins', '41163-205');

CREATE TABLE Vehicle(
    ownerID integer NOT NULL,
    license_plate varchar(50) NOT NULL UNIQUE,
    years INT,
    make varchar(50),
    model varchar(50),
    color varchar(50),
    PRIMARY KEY(license_plate),
    FOREIGN KEY (ownerID) REFERENCES Customer (customerId)
);

insert into Vehicle (ownerId, license_plate, years, make, model, color) values (1, 'PL-MZ', 2001, 'Lincoln', 'LS', 'Crimson');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (2, 'PG-MPL', 1988, 'Volkswagen', 'Type 2', 'Violet');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (3, 'PG-MPM', 1977, 'Pontiac', 'Grand Prix', 'Purple');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (4, 'US-MN', 2009, 'Nissan', 'GT-R', 'Purple');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (5, 'AU-NT', 1990, 'Buick', 'Skylark', 'Pink');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (6, 'PG-SAN', 2010, 'GMC', 'Yukon XL 2500', 'Indigo');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (7, 'US-UT', 2007, 'Jaguar', 'X-Type', 'Blue');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (8, 'US-IN', 1968, 'Pontiac', 'Bonneville', 'Khaki');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (9, 'US-MT', 1991, 'Maserati', 'Spyder', 'Red');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (10, 'GB-ENG', 1997, 'Cadillac', 'Eldorado', 'Teal');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (11, 'DE-RP', 2003, 'Kia', 'Sorento', 'Violet');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (12, 'GY-BA', 2010, 'Mitsubishi', 'Lancer', 'Yellow');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (13, 'MY-12', 2007, 'Lexus', 'GX', 'Aquamarine');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (14, 'ZA-GT', 2011, 'Aston Martin', 'V8 Vantage S', 'Indigo');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (15, 'AU-NTs', 1990, 'Lincoln', 'Town Car', 'Mauv');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (16, 'US-CA', 1995, 'Dodge', 'Grand Caravan', 'Fuscia');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (17, 'US-AK', 2004, 'Chrysler', 'Crossfire', 'Teal');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (18, 'US-KY', 2011, 'Mazda', 'Mazda2', 'Goldenrod');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (19, 'KZ-AKT', 2011, 'Hyundai', 'Genesis Coupe', 'Fuscia');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (20, 'RU-TA', 2001, 'Kia', 'Optima', 'Pink');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (21, 'PG-SHM', 2009, 'Toyota', 'Camry Hybrid', 'Orange');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (22, 'US-OH', 1994, 'Toyota', 'Paseo', 'Mauv');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (23, 'MZ-P', 2004, 'Hyundai', 'Accent', 'Pink');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (24, 'PA-8', 1994, 'Chevrolet', '2500', 'Khaki');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (25, 'AU-SA', 2004, 'Acura', 'RL', 'Crimson');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (26, 'NC-U-A', 2002, 'Chevrolet', 'Silverado', 'Khaki');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (27, 'US-NY', 1992, 'GMC', 'Vandura 1500', 'Blue');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (28, 'PH-ISA', 2005, 'Nissan', 'Altima', 'Goldenrod');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (29, 'RU-SA', 2010, 'Mercedes-Benz', 'GLK-Class', 'Purple');
insert into Vehicle (ownerId, license_plate, years, make, model, color) values (30, 'US-ND', 1995, 'Mitsubishi', 'Pajero', 'Maroon');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (31, 'CA-MB', 2004, 'Kia', 'Spectra', 'Violet');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (32, 'PA-5', 2008, 'Toyota', 'Camry Solara', 'Pink');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (33, 'KI-P', 1991, 'Mitsubishi', 'GTO', 'Khaki');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (34, 'US-AK', 2008, 'BMW', '3 Series', 'Pink');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (35, 'BR-MG', 2006, 'Lamborghini', 'Gallardo', 'Pink');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (36, 'US-TX', 1992, 'Chevrolet', 'Lumina', 'Turquoise');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (37, 'CA-SK', 1993, 'Subaru', 'Alcyone SVX', 'Khaki');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (38, 'US-OH', 2010, 'Ford', 'F250', 'Yellow');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (39, 'US-CA', 1995, 'Honda', 'Prelude', 'Purple');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (40, 'US-AK', 2007, 'Morgan', 'Aero 8', 'Crimson');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (41, 'AU-WA', 2012, 'Porsche', 'Cayman', 'Fuscia');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (42, 'CA-MB', 1997, 'Toyota', 'RAV4', 'Red');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (43, 'GB-ENG', 1997, 'Oldsmobile', 'LSS', 'Mauv');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (44, 'BO-S', 2004, 'BMW', '545', 'Mauv');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (45, 'US-CO', 2012, 'Audi', 'A5', 'Khaki');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (46, 'US-AK', 2008, 'Toyota', 'Sequoia', 'Mauv');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (47, 'DE-BY', 2010, 'BMW', 'X3', 'Purple');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (48, 'PH-BTN', 2005, 'BMW', '3 Series', 'Aquamarine');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (49, 'ID-PA', 1985, 'Merkur', 'XR4Ti', 'Yellow');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (50, 'NO-18', 2001, 'Mazda', 'MPV', 'Red');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (51, 'PK-NW', 1953, 'Chevrolet', 'Corvette', 'Maroon');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (52, 'PG-NIK', 1994, 'Chrysler', 'Concorde', 'Maroon');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (53, 'HT-OU', 1992, 'Dodge', 'Spirit', 'Violet');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (54, 'RW-03', 1990, 'Subaru', 'XT', 'Pink');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (55, 'PG-CPM', 1993, 'Toyota', 'Previa', 'Pink');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (56, 'BR-BA', 2000, 'Plymouth', 'Breeze', 'Purple');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (57, 'MX-TAB', 2006, 'Mazda', 'Mazdaspeed6', 'Khaki');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (58, 'KE-400', 2011, 'Hyundai', 'Genesis Coupe', 'Red');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (59, 'BR-TO', 2012, 'Nissan', 'Rogue', 'Indigo');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (60, 'ID-PA', 1992, 'Toyota', 'Celica', 'Violet');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (61, 'AU-VIC', 2000, 'Plymouth', 'Prowler', 'Yellow');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (62, 'AO-UIG', 1997, 'Pontiac', 'Firebird', 'Teal');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (63, 'IR-29', 2005, 'Chrysler', '300', 'Purple');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (64, 'NA-OT', 2001, 'Toyota', 'Sequoia', 'Maroon');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (65, 'IN-MP', 2001, 'Pontiac', 'Montana', 'Turquoise');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (66, 'PG-CPM', 1997, 'Chrysler', 'Concorde', 'Indigo');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (67, 'MR-01', 2009, 'Pontiac', 'Solstice', 'Khaki');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (68, 'TR-34', 2001, 'Mitsubishi', 'Montero', 'Blue');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (69, 'RS-00', 2009, 'Volkswagen', 'R32', 'Orange');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (70, 'US-TX', 2011, 'Mazda', 'Mazda3', 'Mauv');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (71, 'AU-QLD', 1990, 'Suzuki', 'Swift', 'Teal');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (72, 'US-CA', 2006, 'Jeep', 'Liberty', 'Blue');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (73, 'AU-QLD', 2005, 'Acura', 'RL', 'Turquoise');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (74, 'FR-R', 1994, 'BMW', '5 Series', 'Purple');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (75, 'ER-SK', 1979, 'Nissan', '280ZX', 'Goldenrod');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (76, 'MM-15', 2009, 'Mazda', 'Mazda5', 'Goldenrod');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (77, 'TM-B', 1994, 'GMC', '1500', 'Teal');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (78, 'US-MA', 2000, 'BMW', 'X5', 'Red');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (79, 'US-AK', 2009, 'Dodge', 'Journey', 'Teal');
insert into Vehicle (ownerID, license_plate, years, make, model, color) values (80, 'PA-5', 2010, 'BMW', '1 Series', 'Orange');

CREATE TABLE Parts(
    stock INT,
    part_id INT,
    cost INT,
    part_name varchar(50),
    PRIMARY KEY(part_id)
);

insert into Parts (stock, part_id, cost, part_name) values (20, 1, 50, 'Engine');
insert into Parts (stock, part_id, cost, part_name) values (20, 2, 51, 'Transmission');
insert into Parts (stock, part_id, cost, part_name) values (20, 3, 52, 'Battery');
insert into Parts (stock, part_id, cost, part_name) values (20, 4, 53, 'Alternator');
insert into Parts (stock, part_id, cost, part_name) values (20, 5, 54, 'Radiator');
insert into Parts (stock, part_id, cost, part_name) values (5, 6, 55, 'Front Axle');
insert into Parts (stock, part_id, cost, part_name) values (5, 7, 56, 'Brakes');
insert into Parts (stock, part_id, cost, part_name) values (5, 8, 57, 'Catalytic Converter');
insert into Parts (stock, part_id, cost, part_name) values (5, 9, 58, 'Gear Lever.');
insert into Parts (stock, part_id, cost, part_name) values (5, 10, 59, 'Seat belt.');
insert into Parts (stock, part_id, cost, part_name) values (6, 11, 60, 'Speedometer.');
insert into Parts (stock, part_id, cost, part_name) values (6, 12, 61, 'Hood');
insert into Parts (stock, part_id, cost, part_name) values (6, 13, 62, 'Trunk');
insert into Parts (stock, part_id, cost, part_name) values (6, 14, 63, 'Fuel gauge');
insert into Parts (stock, part_id, cost, part_name) values (7, 15, 64, 'Car trip meter');
insert into Parts (stock, part_id, cost, part_name) values (7, 16, 65, 'Rev counter');
insert into Parts (stock, part_id, cost, part_name) values (7, 17, 66, 'Wheel/Tire');
insert into Parts (stock, part_id, cost, part_name) values (7, 18, 67, 'Rear Axle');
insert into Parts (stock, part_id, cost, part_name) values (7, 19, 68, 'Rear Suspension');
insert into Parts (stock, part_id, cost, part_name) values (8, 20, 69, 'License Plate');


CREATE TABLE Agent(
   employee_Id INT NOT NULL UNIQUE,
   firstName varchar(50),
   lastName varchar(50),
   PRIMARY KEY(employee_Id)
);

insert into Agent (employee_Id, firstName, lastName) values (1, 'Queenie', 'Dallosso');
insert into Agent (employee_Id, firstName, lastName) values (2, 'Jamima', 'Barents');
insert into Agent (employee_Id, firstName, lastName) values (3, 'Trude', 'Glidden');
insert into Agent (employee_Id, firstName, lastName) values (4, 'Morton', 'Chidlow');
insert into Agent (employee_Id, firstName, lastName) values (5, 'Zollie', 'Wolffers');
insert into Agent (employee_Id, firstName, lastName) values (6, 'Zonnya', 'Ellesworth');
insert into Agent (employee_Id, firstName, lastName) values (7, 'Algernon', 'Hammond');
insert into Agent (employee_Id, firstName, lastName) values (8, 'Fredric', 'Beamond');
insert into Agent (employee_Id, firstName, lastName) values (9, 'Antonella', 'Gaythorpe');
insert into Agent (employee_Id, firstName, lastName) values (10, 'Willamina', 'McNeice');
insert into Agent (employee_Id, firstName, lastName) values (11, 'Amie', 'Nestoruk');
insert into Agent (employee_Id, firstName, lastName) values (12, 'Borden', 'Luckham');
insert into Agent (employee_Id, firstName, lastName) values (13, 'Sly', 'Topling');
insert into Agent (employee_Id, firstName, lastName) values (14, 'Horacio', 'Gehricke');
insert into Agent (employee_Id, firstName, lastName) values (15, 'Casey', 'Back');
insert into Agent (employee_Id, firstName, lastName) values (16, 'Siffre', 'Tanslie');
insert into Agent (employee_Id, firstName, lastName) values (17, 'Neron', 'Keegan');
insert into Agent (employee_Id, firstName, lastName) values (18, 'Daron', 'Petofi');
insert into Agent (employee_Id, firstName, lastName) values (19, 'Nickie', 'Tow');
insert into Agent (employee_Id, firstName, lastName) values (20, 'Nelie', 'Bakhrushkin');
insert into Agent (employee_Id, firstName, lastName) values (21, 'Jorgan', 'Norcock');
insert into Agent (employee_Id, firstName, lastName) values (22, 'Goldina', 'Code');
insert into Agent (employee_Id, firstName, lastName) values (23, 'Berty', 'Brasier');
insert into Agent (employee_Id, firstName, lastName) values (24, 'Evan', 'Lucchi');
insert into Agent (employee_Id, firstName, lastName) values (25, 'Boone', 'Hadingham');
insert into Agent (employee_Id, firstName, lastName) values (26, 'Philly', 'Cregg');
insert into Agent (employee_Id, firstName, lastName) values (27, 'Dyann', 'Slark');
insert into Agent (employee_Id, firstName, lastName) values (28, 'Dar', 'Twigge');
insert into Agent (employee_Id, firstName, lastName) values (29, 'Flin', 'Mc Carroll');
insert into Agent (employee_Id, firstName, lastName) values (30, 'Morse', 'Ertelt');
insert into Agent (employee_Id, firstName, lastName) values (31, 'Flem', 'Hare');
insert into Agent (employee_Id, firstName, lastName) values (32, 'Jolynn', 'Sweed');
insert into Agent (employee_Id, firstName, lastName) values (33, 'Sherrie', 'Pengilly');
insert into Agent (employee_Id, firstName, lastName) values (34, 'Gary', 'Luety');
insert into Agent (employee_Id, firstName, lastName) values (35, 'Evyn', 'Dalliwater');
insert into Agent (employee_Id, firstName, lastName) values (36, 'Tulley', 'Tirone');
insert into Agent (employee_Id, firstName, lastName) values (37, 'Jodi', 'Yanyshev');
insert into Agent (employee_Id, firstName, lastName) values (38, 'Deena', 'Eldershaw');
insert into Agent (employee_Id, firstName, lastName) values (39, 'Joela', 'Scinelli');
insert into Agent (employee_Id, firstName, lastName) values (40, 'Amalea', 'Palluschek');
insert into Agent (employee_Id, firstName, lastName) values (41, 'Tedmund', 'Davsley');
insert into Agent (employee_Id, firstName, lastName) values (42, 'Portia', 'Thirtle');
insert into Agent (employee_Id, firstName, lastName) values (43, 'Antonella', 'Bearne');
insert into Agent (employee_Id, firstName, lastName) values (44, 'Carri', 'Baudic');
insert into Agent (employee_Id, firstName, lastName) values (45, 'Dominique', 'Coverlyn');
insert into Agent (employee_Id, firstName, lastName) values (46, 'Pace', 'Elcoate');
insert into Agent (employee_Id, firstName, lastName) values (47, 'Tadeo', 'Durgan');
insert into Agent (employee_Id, firstName, lastName) values (48, 'Read', 'Gligori');
insert into Agent (employee_Id, firstName, lastName) values (49, 'Garth', 'Brastead');
insert into Agent (employee_Id, firstName, lastName) values (50, 'Latashia', 'Ashenhurst');
insert into Agent (employee_Id, firstName, lastName) values (51, 'Julita', 'Thorneley');
insert into Agent (employee_Id, firstName, lastName) values (52, 'Malynda', 'Mack');
insert into Agent (employee_Id, firstName, lastName) values (53, 'Cecilia', 'Howship');
insert into Agent (employee_Id, firstName, lastName) values (54, 'Meredith', 'Matczak');
insert into Agent (employee_Id, firstName, lastName) values (55, 'Gretta', 'Schoales');
insert into Agent (employee_Id, firstName, lastName) values (56, 'Ximenes', 'Spurling');
insert into Agent (employee_Id, firstName, lastName) values (57, 'Siobhan', 'Kretschmer');
insert into Agent (employee_Id, firstName, lastName) values (58, 'Drusi', 'Pues');
insert into Agent (employee_Id, firstName, lastName) values (59, 'Ephrem', 'Haughton');
insert into Agent (employee_Id, firstName, lastName) values (60, 'Giulio', 'Rudolf');
insert into Agent (employee_Id, firstName, lastName) values (61, 'Mahala', 'Caroline');
insert into Agent (employee_Id, firstName, lastName) values (62, 'Parsifal', 'Maith');
insert into Agent (employee_Id, firstName, lastName) values (63, 'Dimitry', 'Pattullo');
insert into Agent (employee_Id, firstName, lastName) values (64, 'Lauraine', 'Scones');
insert into Agent (employee_Id, firstName, lastName) values (65, 'Fidelia', 'Pallent');
insert into Agent (employee_Id, firstName, lastName) values (66, 'Cliff', 'Shearsby');
insert into Agent (employee_Id, firstName, lastName) values (67, 'Kerk', 'Duffer');
insert into Agent (employee_Id, firstName, lastName) values (68, 'Gasparo', 'Skittrell');
insert into Agent (employee_Id, firstName, lastName) values (69, 'Misty', 'Hugli');
insert into Agent (employee_Id, firstName, lastName) values (70, 'Carrissa', 'Phillimore');



CREATE TABLE Policy(
    issueDate varchar(50),
    policy_number INT NOT NULL UNIQUE,
    deductible INT,
    policy_type text,
    policy_cost INT,
    PRIMARY KEY(policy_number)
);

insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('2/20/2022', 1, 500, 'PATK', 250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('4/27/2022', 2, 750, 'CYPG', 750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('11/3/2022', 3, 1000, '5T9', 1250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('9/16/2022', 4, 1250, 'PANO', 1750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('4/18/2022', 5, 1500, 'CYXQ', 2250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('9/24/2022', 6, 1750, 'HHAS', 2750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('10/14/2022', 7, 2000, 'ZMAT', 3250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('12/12/2021', 8, 2250, null, 3750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('8/23/2022', 9, 2500, 'ZSSR', 4250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('6/9/2022', 10, 2750, 'CAD4', 4750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('10/24/2022', 11, 3000, 'KGON', 5250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('10/18/2022', 12, 3250, 'ZYMH', 5750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('4/26/2022', 13, 3500, 'FQMA', 6250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('12/31/2021', 14, 3750, 'ZJSY', 6750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('1/8/2022', 15, 4000, 'MRDK', 7250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('10/3/2022', 16, 4250, null, 7750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('11/1/2022', 17, 4500, 'DNKN', 8250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('9/1/2022', 18, 4750, '3TR', 8750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('11/14/2022', 19, 5000, 'UGSS', 9250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('12/24/2021', 20, 5250, 'RPVA', 9750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('3/25/2022', 21, 5500, 'UKCK', 10250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('2/6/2022', 22, 5750, 'PAPO', 10750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('5/26/2022', 23, 6000, 'PFKU', 11250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('5/20/2022', 24, 6250, 'ROKR', 11750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('6/6/2022', 25, 6500, 'NWWO', 12250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('3/11/2022', 26, 6750, 'KNRB', 12750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('8/19/2022', 27, 7000, 'AGGH', 13250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('6/11/2022', 28, 7250, 'KSAW', 13750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('1/29/2022', 29, 7500, null, 14250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('5/12/2022', 30, 7750, 'RJNO', 14750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('8/4/2022', 31, 8000, 'GQNL', 15250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('11/7/2022', 32, 8250, 'HCMO', 15750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('8/23/2022', 33, 8500, 'SAZS', 16250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('9/7/2022', 34, 8750, 'FLKE', 16750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('6/8/2022', 35, 9000, 'KFSD', 17250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('3/20/2022', 36, 9250, 'KCIC', 17750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('1/29/2022', 37, 9500, 'YSPK', 18250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('10/11/2022', 38, 9750, null, 18750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('4/1/2022', 39, 10000, 'FEFY', 19250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('4/16/2022', 40, 10250, 'KFMH', 19750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('8/16/2022', 41, 10500, 'FEGZ', 20250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('3/9/2022', 42, 10750, 'OADS', 20750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('6/25/2022', 43, 11000, 'OOLK', 21250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('10/28/2022', 44, 11250, 'KIPL', 21750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('6/25/2022', 45, 11500, 'VTSM', 22250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('2/1/2022', 46, 11750, 'OAFR', 22750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('1/15/2022', 47, 12000, 'PAYA', 23250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('2/8/2022', 48, 12250, 'YWDL', 23750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('12/10/2022', 49, 12500, 'PASL', 24250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('1/8/2022', 50, 12750, 'KLSV', 24750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('7/25/2022', 51, 13000, 'YSHR', 25250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('6/2/2022', 52, 13250, null, 25750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('6/10/2022', 53, 13500, null, 26250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('5/26/2022', 54, 13750, 'LFQV', 26750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('11/22/2022', 55, 14000, 'EGTO', 27250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('1/19/2022', 56, 14250, 'SDUN', 27750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('7/23/2022', 57, 14500, 'EGTE', 28250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('6/18/2022', 58, 14750, 'SWDN', 28750);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('2/4/2022', 59, 15000, 'CYZF', 29250);
insert into Policy (issueDate, policy_number, deductible, policy_type, policy_cost) values ('11/23/2022', 60, 15250, 'CTP9', 29750);



CREATE TABLE mechanic_employee(
    storeId INT NOT NULL,
    employeeId INT NOT NULL UNIQUE,
    firstName varchar(50),
    middleInitial varchar(50),
    lastName varchar(50),
    PRIMARY KEY(employeeId),
    FOREIGN KEY (storeId) REFERENCES ReapirShop (storeId)
);

insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (1, 1, 'Siana', null, 'Clapson');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (1, 2, 'Steffie', null, 'Caldecutt');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (1, 3, 'Bert', null, 'Attkins');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (1, 4, 'Cassius', null, 'Frobisher');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (1, 5, 'Matelda', null, 'McCague');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (2, 6, 'Bobbie', null, 'Gherardi');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (2, 7, 'Jaquith', null, 'McReedy');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (2, 8, 'Gawen', null, 'Sine');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (2, 9, 'Hobie', null, 'Hammill');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (2, 10, 'Esther', null, 'Glynne');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (3, 11, 'Rolando', null, 'Ferryn');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (3, 12, 'Idaline', null, 'MacNab');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (3, 13, 'Rudd', null, 'Malsher');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (3, 14, 'Renate', null, 'Takle');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (3, 15, 'Chantalle', null, 'Korda');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (4, 16, 'Hallie', null, 'Illwell');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (4, 17, 'Lulita', null, 'Halwill');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (4, 18, 'Bernice', null, 'De Normanville');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (4, 19, 'Pansy', null, 'Connikie');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (4, 20, 'Hillery', null, 'Whisby');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (5, 21, 'Cortie', null, 'Sillars');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (5, 22, 'Pattie', null, 'Grigaut');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (5, 23, 'Arlie', null, 'Sprowle');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (5, 24, 'Rebekkah', null, 'Jickells');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (5, 25, 'Ros', null, 'Delatour');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (6, 26, 'Vivie', null, 'Skoate');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (6, 27, 'Maximilian', null, 'Wharf');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (6, 28, 'Zabrina', null, 'Rickman');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (6, 29, 'Rogerio', null, 'List');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (6, 30, 'Mauricio', null, 'MacNeilly');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (7, 31, 'Annemarie', null, 'Hellyer');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (7, 32, 'Pattie', null, 'Pattinson');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (7, 33, 'Othello', null, 'Biss');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (7, 34, 'Darrel', null, 'Capstake');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (7, 35, 'Aloysia', null, 'Bramelt');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (8, 36, 'Isador', null, 'Kidd');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (8, 37, 'Noemi', null, 'Berthot');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (8, 38, 'Mart', null, 'Loughead');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (8, 39, 'Gerianna', null, 'Lumm');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (8, 40, 'Westley', null, 'Grzegorek');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (9, 41, 'Carleton', null, 'Antonopoulos');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (9, 42, 'Cointon', null, 'Sogg');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (9, 43, 'Garner', null, 'Choules');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (9, 44, 'Lucius', null, 'Ramplee');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (9, 45, 'Shantee', null, 'Caig');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (10, 46, 'Torey', null, 'Moppett');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (10, 47, 'Vasilis', null, 'Pick');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (10, 48, 'Amy', null, 'Pegden');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (10, 49, 'Hildy', null, 'Dillow');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (10, 50, 'Garold', null, 'Weiser');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (11, 51, 'Nicolina', null, 'Ferrarese');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (11, 52, 'Viviana', null, 'Simka');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (11, 53, 'Michel', null, 'Farnes');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (11, 54, 'Esra', null, 'Cawson');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (11, 55, 'Ashley', null, 'Luciano');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (12, 56, 'Myrah', null, 'Etty');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (12, 57, 'Brandon', null, 'Spellacy');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (12, 58, 'Shep', null, 'Blockwell');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (12, 59, 'Solomon', null, 'Laidel');
insert into mechanic_employee (storeId, employeeId, firstName, middleInitial, lastName) values (12, 60, 'Sonja', null, 'Rawlins');


CREATE TABLE Claim(
    policy_number INT ,
    repair_cost INT,
    claim_id INT UNIQUE,
    damage_estimate float,
    customerId INT NOT NULL,
    atFault boolean,
    vehicleId INT NOT NULL,
    mechanic_id INT,
    PRIMARY KEY(claim_id),
    FOREIGN KEY (policy_number) REFERENCES Policy (policy_number),
    FOREIGN KEY (customerId) REFERENCES Customer (customerId),
    FOREIGN KEY (vehicleId) REFERENCES Vehicle (ownerId),
    FOREIGN KEY (mechanic_id) REFERENCES ReapirShop (storeId)
);

insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (1, 50, 1, 500, 1, false, 1, 1);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (2, 66, 2, 750, 2, false, 2, 2);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (3, 83, 3, 1000, 3, false, 3, 3);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (4, 100, 4, 1250, 4, true, 4, 4);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (5, 116, 5, 1500, 5, true, 5, 5);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (6, 133, 6, 1750, 6, true, 6, 6);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (7, 150, 7, 2000, 7, false, 7, 7);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (8, 166, 8, 2250, 8, false, 8, 8);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (9, 183, 9, 2500, 9, false, 9, 9);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (10, 200, 10, 2750, 10, true, 10, 10);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (11, 216, 11, 3000, 11, false, 11, 11);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (12, 233, 12, 749, 12, true, 12, 12);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (13, 250, 13, 999, 13, true, 13, 13);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (14, 266, 14, 1249, 14, true, 14, 14);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (15, 283, 15, 1499, 15, false, 15, 15);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (16, 300, 16, 1749, 16, true, 16, 16);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (17, 316, 17, 1999, 17, true, 17, 17);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (18, 333, 18, 2249, 18, false, 18, 18);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (19, 350, 19, 2499, 19, true, 19, 19);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (20, 366, 20, 2749, 20, false, 20, 20);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (21, 383, 21, 2999, 21, false, 21, 21);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (22, 400, 22, 748, 22, false, 22, 22);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (23, 416, 23, 998, 23, true, 23, 23);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (24, 433, 24, 1248, 24, true, 24, 24);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (25, 450, 25, 1498, 25, false, 25, 25);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (1, 466, 26, 1748, 26, false, 26, 26);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (2, 483, 27, 1998, 27, false, 27, 27);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (3, 500, 28, 2248, 28, true, 28, 28);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (4, 516, 29, 2498, 29, false, 29, 29);
insert into Claim (policy_number, repair_cost, claim_id, damage_estimate, customerId, atFault, vehicleId, mechanic_id) values (5, 533, 30, 2748, 30, true, 30, 30);



CREATE TABLE Repair_Order(
    repair_id INT NOT NULL UNIQUE,
    claim_id  INT,
    appointment_charge INT,
    part_cost INT,
    labor_cost INT,
    vehicleId INT NOT NULL,
    status_id INT,
    PRIMARY KEY(repair_id),
    FOREIGN KEY (vehicleId) REFERENCES Vehicle (ownerID),
    FOREIGN KEY (claim_id) REFERENCES Claim (claim_id)
);

insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (1, 1, 50, 425, 1, 1);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (2, 2, 51, 425, 2, 1);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (3, 3, 52, 426, 3, 2);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (4, 4, 53, 426, 4, 3);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (5, 5, 54, 427, 5, 3);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (6, 6, 55, 427, 6, 1);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (7, 7, 56, 428, 7, 2);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (8, 8, 57, 428, 8, 2);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (9, 9, 58, 429, 9, 3);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (10, 10, 59, 429, 10, 1);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (11, 11, 60, 430, 11, 1);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (12, 12, 61, 430, 12, 2);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (13, 13, 62, 431, 13, 3);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (14, 14, 63, 431, 14, 3);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (15, 15, 64, 432, 15, 1);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (16, 16, 65, 433, 16, 2);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (17, 17, 66, 433, 17, 2);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (18, 18, 67, 434, 18, 3);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (19, 19, 68, 434, 19, 1);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (20, 20, 69, 435, 20, 1);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (21, 21, 70, 435, 21, 2);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (22, 22, 71, 436, 22, 3);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (23, 23, 72, 436, 23, 3);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (24, 24, 73, 437, 24, 1);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (25, 25, 74, 437, 25, 2);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (26, 26, 75, 438, 26, 2);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (27, 27, 76, 438, 27, 3);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (28, 28, 77, 439, 28, 1);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (29, 29, 78, 439, 29, 1);
insert into Repair_Order (repair_id, claim_id, part_cost, labor_cost, vehicleId, status_id) values (30, 30, 79, 440, 30, 2);

CREATE TABLE Status(
   summary text,
   status_id INT NOT NULL UNIQUE,
   pickup_time varchar(50),
   PRIMARY KEY(status_id)
);

insert into Status (summary, status_id, pickup_time) values ('leverage efficient bandwidth', 1, '12/7/2022');
insert into Status (summary, status_id, pickup_time) values ('target efficient methodologies', 2, '8/17/2022');
insert into Status (summary, status_id, pickup_time) values ('monetize integrated networks', 3, '3/4/2022');
insert into Status (summary, status_id, pickup_time) values ('e-enable cutting-edge communities', 4, '3/19/2022');
insert into Status (summary, status_id, pickup_time) values ('morph frictionless interfaces', 5, '10/22/2022');
insert into Status (summary, status_id, pickup_time) values ('seize dot-com bandwidth', 6, '12/9/2022');
insert into Status (summary, status_id, pickup_time) values ('enhance out-of-the-box web-readiness', 7, '3/28/2022');
insert into Status (summary, status_id, pickup_time) values ('maximize bricks-and-clicks paradigms', 8, '3/20/2022');
insert into Status (summary, status_id, pickup_time) values ('matrix holistic solutions', 9, '12/6/2022');
insert into Status (summary, status_id, pickup_time) values ('extend dynamic technologies', 10, '4/15/2022');
insert into Status (summary, status_id, pickup_time) values ('e-enable plug-and-play models', 11, '2/12/2022');
insert into Status (summary, status_id, pickup_time) values ('grow strategic markets', 12, '11/8/2022');
insert into Status (summary, status_id, pickup_time) values ('enable synergistic methodologies', 13, '12/26/2021');
insert into Status (summary, status_id, pickup_time) values ('brand sexy functionalities', 14, '10/2/2022');
insert into Status (summary, status_id, pickup_time) values ('drive vertical action-items', 15, '4/3/2022');
insert into Status (summary, status_id, pickup_time) values ('enhance customized e-commerce', 16, '10/6/2022');
insert into Status (summary, status_id, pickup_time) values ('deploy collaborative networks', 17, '8/17/2022');
insert into Status (summary, status_id, pickup_time) values ('redefine clicks-and-mortar relationships', 18, '5/26/2022');
insert into Status (summary, status_id, pickup_time) values ('productize wireless relationships', 19, '10/21/2022');
insert into Status (summary, status_id, pickup_time) values ('transition dot-com synergies', 20, '9/1/2022');
insert into Status (summary, status_id, pickup_time) values ('enable visionary markets', 21, '6/17/2022');
insert into Status (summary, status_id, pickup_time) values ('iterate next-generation technologies', 22, '12/27/2021');
insert into Status (summary, status_id, pickup_time) values ('enable proactive paradigms', 23, '8/30/2022');
insert into Status (summary, status_id, pickup_time) values ('deliver best-of-breed bandwidth', 24, '6/10/2022');
insert into Status (summary, status_id, pickup_time) values ('deliver sticky relationships', 25, '7/2/2022');
insert into Status (summary, status_id, pickup_time) values ('incubate best-of-breed infrastructures', 26, '9/28/2022');
insert into Status (summary, status_id, pickup_time) values ('cultivate B2B paradigms', 27, '9/24/2022');
insert into Status (summary, status_id, pickup_time) values ('generate mission-critical platforms', 28, '12/2/2022');
insert into Status (summary, status_id, pickup_time) values ('redefine one-to-one eyeballs', 29, '10/14/2022');
insert into Status (summary, status_id, pickup_time) values ('monetize B2B methodologies', 30, '4/26/2022');
insert into Status (summary, status_id, pickup_time) values ('deliver sexy markets', 31, '5/21/2022');
insert into Status (summary, status_id, pickup_time) values ('empower impactful partnerships', 32, '6/30/2022');
insert into Status (summary, status_id, pickup_time) values ('recontextualize virtual methodologies', 33, '11/18/2022');
insert into Status (summary, status_id, pickup_time) values ('facilitate next-generation vortals', 34, '12/28/2021');
insert into Status (summary, status_id, pickup_time) values ('synergize robust vortals', 35, '8/16/2022');
insert into Status (summary, status_id, pickup_time) values ('synergize synergistic technologies', 36, '11/17/2022');
insert into Status (summary, status_id, pickup_time) values ('incubate global niches', 37, '2/24/2021');
insert into Status (summary, status_id, pickup_time) values ('integrate impactful bandwidth', 38, '4/12/2022');
insert into Status (summary, status_id, pickup_time) values ('unleash efficient e-business', 39, '1/18/2022');
insert into Status (summary, status_id, pickup_time) values ('target interactive functionalities', 40, '11/26/2022');
insert into Status (summary, status_id, pickup_time) values ('brand sexy partnerships', 41, 6/6/2022);
insert into Status (summary, status_id, pickup_time) values ('mesh web-enabled experiences', 42, '9/13/2022');
insert into Status (summary, status_id, pickup_time) values ('transform collaborative e-commerce', 43, '2/4/2022');
insert into Status (summary, status_id, pickup_time) values ('evolve transparent infrastructures', 44, '5/8/2022');
insert into Status (summary, status_id, pickup_time) values ('generate front-end eyeballs', 45, '8/15/2022');
insert into Status (summary, status_id, pickup_time) values ('enhance user-centric models', 46, '7/12/2022');
insert into Status (summary, status_id, pickup_time) values ('drive B2C interfaces', 47, '8/6/2002');
insert into Status (summary, status_id, pickup_time) values ('generate sticky e-tailers', 48, '11/11/2022');
insert into Status (summary, status_id, pickup_time) values ('reinvent best-of-breed schemas', 49, '8/16/2022');
insert into Status (summary, status_id, pickup_time) values ('repurpose virtual solutions', 50, '2/13/2022');
insert into Status (summary, status_id, pickup_time) values ('transition visionary niches', 51, '8/13/2022');
insert into Status (summary, status_id, pickup_time) values ('optimize value-added portals', 52, '9/23/2022');
insert into Status (summary, status_id, pickup_time) values ('reintermediate out-of-the-box relationships', 53, '4/23/2022');
insert into Status (summary, status_id, pickup_time) values ('synthesize ubiquitous convergence', 54, '10/10/2022');
insert into Status (summary, status_id, pickup_time) values ('envisioneer cross-platform deliverables', 55, '10/4/2022');
insert into Status (summary, status_id, pickup_time) values ('innovate turn-key portals', 56, '2/22/2021');
insert into Status (summary, status_id, pickup_time) values ('transition viral metrics', 57, '3/5/2022');
insert into Status (summary, status_id, pickup_time) values ('matrix 24/7 metrics', 58, '3/12/2022');
insert into Status (summary, status_id, pickup_time) values ('transition viral web-readiness', 59, '6/16/2022');
insert into Status (summary, status_id, pickup_time) values ('expedite real-time e-business', 60, '2/21/2022');


CREATE TABLE Payment(
    mechanic_id INT,
    repair_price INT,
    repair_id INT NOT NULL,
    payment_Id INT NOT NULL UNIQUE,
    PRIMARY KEY(payment_Id),
    FOREIGN KEY (mechanic_id) REFERENCES ReapirShop (storeId),
    FOREIGN KEY (repair_id) REFERENCES Repair_Order (repair_id)
);

insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (1, 50, 1, 1);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (2, 66, 2, 2);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (3, 83, 3, 3);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (4, 100, 4, 4);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (5, 116, 5, 5);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (6, 133, 6, 6);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (7, 150, 7, 7);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (8, 166, 8, 8);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (9, 183, 9, 9);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (10, 200, 10, 10);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (11, 216, 11, 11);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (12, 233, 12, 12);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (13, 250, 13, 13);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (14, 266, 14, 14);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (15, 283, 15, 15);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (16, 300, 16, 16);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (17, 316, 17, 17);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (18, 333, 18, 18);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (19, 350, 19, 19);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (20, 366, 20, 20);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (21, 383, 21, 21);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (22, 400, 22, 22);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (23, 416, 23, 23);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (24, 433, 24, 24);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (25, 450, 25, 25);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (26, 466, 26, 26);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (27, 483, 27, 27);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (28, 500, 28, 28);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (29, 516, 29, 29);
insert into Payment (mechanic_id, repair_price, repair_id, payment_Id) values (30, 533, 30, 30);
