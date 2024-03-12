-- 1.Ruhların kacısı filminin id sini getiren sorgu 

SELECT film_id
FROM filmler 
WHERE film_ad = 'Ruhların kaçışı';

-- 2.Ruhların kaçışı filmini tabloya ekleme

INSERT INTO filmler
VALUES (NULL,'Ruhların Kaçışı','Hayo Miyazaki',2001,'Animasyon',125,NULL,NULL,TRUE);

-- 3.id si 233 olan filmin suresını ve ödul durumunu guncelleme

UPDATE filmler
SET sure = 108 , film_odul =FALSE 
WHERE film_id =233 ;

-- 4.id si 233 olan filmi tablodan silin 

DELETE FROM filmler WHERE film_id = 233 ;

-- 5.eleştiri tablosundaki verileri kullanarak yapılan eleştiriyi , film_id ve eleştirmen adını listeleyiniz.
SELECT elestiri_metin , film_id , elestirmen 
FROM elestiriler ;

-- 8.5 puanın uzerınde elestiri yapılan filmin id sini eleştiri puanını ve elestırmen bılgılerını lısteleyınız
SELECT film_id , puan , elestirmen
FROM elestiriler 
WHERE puan >= 8.5 ;

-- en dusuk puana sabıp 10 filmi listeleyınız 
SELECT *
FROM filmler
ORDER BY imdb_puan ASC
LIMIT 10;

-- puan verımıs ama elestırı yaıılmamıs fılmlerı lısteleyınız
SELECT * FROM elestiriler
WHERE elestiri_metin IS NULL;

-- sadece poster alanı dolu olan filmlerı listele
SELECT * FROM filmler
WHERE poster IS NOT NULL;
-- 1990 oncesı ouanı 8 ve uzerı olan 100 dk nanın altındakı fılmlerı lısteleyın
SELECT *
FROM filmler 
WHERE yil<= 1990 AND imdb_puan >=8 AND sure < 100 ;

-- suresı 100 dk altında kaç tane fılm var 
SELECT *
FROM filmler
WHERE sure <100;

-- 1990 2001 2010 2015 yıllarında cekılen filmlerı getırın 
SELECT *
FROM filmler
WHERE yil IN (1990,2001,2010,2015);

-- dram turundekı filmlerı getırın 
SELECT *
FROM filmler 
WHERE tur LIKE '%dram%';

-- yönetmenı chrıs olan filmlerı getırın 
SELECT *
FROM filmler 
WHERE yonetmen LIKE '%Chris%';
-- 2000 sonrası en kısa sureye sahıp filmi getırın 
SELECT * 
FROM filmler
WHERE yil >2000
ORDER BY sure ASC
LIMIT 1 ;
-- 1990 ve 2000 yılları arasında en kısa dram turundekı filmin adını turunu ve süresini getırın 
SELECT film_id , film_ad , tur , sure 
FROM filmler
WHERE yil BETWEEN 1990 AND 2000 
ORDER BY sure ASC 
LIMIT 1 ;









