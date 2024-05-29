-- afficher toute les données des clients
SELECT Customer_ID,Customer_name,Tel FROM CUSTOMER;
-- Afficher le nom_du_produit et la catégorie pour les produits dont le prix est compris entre 5000 et 10000
SELECT product_name,Category FROM PRODUCT
WHERE 5000 >= price_product = 10000;
-- Affichez toutes les données des produits triés par ordre décroissant de prix.
SELECT product_id,price_product,product_name FROM PRODUCT
ORDER BY PRODUCT DESC;
-- Afficher le nombre total de commandes, le montant moyen, le montant total le plus élevé et le montant total inférieur. Pour chaque product_id, afficher le nombre de commande 
SELECT COUNT(*), MIN(montant),MAX(montant),AVG(montant) FROM PRODUCT;

-- Pour chaque product_id, afficher le nombre de commande 
SELECT product_id, COUNT(*) AS nombre_commande FROM PRODUCT
GROUP BY product_id;
-- Afficher le customer_id qui a plus de 2 commandes
SELECT customerid FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 2;
-- Pour chaque mois de l'année 2020, affichez le nombre de commandes
SELECT DATEPART(MONTH, OrderDate) AS mois , COUNT(*) AS nombre_de_commandes
FROM ORDER
WHERE YEAR(OrderDate) = 2020
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY mois;

-- Pour chaque commande, affichez le nom_produit, le nom_client et la date de la commande
SELECT product_name, Customer_name, OrderDate  FROM ORDERS
INNER JOIN Customers  ON id_customer = id;
-- Afficher toutes les commandes passées il y a trois mois
SELECT *
FROM ORDERS
WHERE OrderDate >= DATEADD(MONTH, -3, GETDATE());

-- Requête pour afficher les clients sans commande
SELECT customer_id
FROM CUSTOMER
LEFT JOIN Orders  ON customer_id = customer_id
WHERE customer_id IS NULL;
