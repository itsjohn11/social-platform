-- 1 Seleziona gli utenti che hanno postato almeno un video
SELECT*
FROM `medias`
WHERE `type` LIKE "video"

-- 2 Seleziona tutti i post senza Like (13)
SELECT *
FROM `posts`
LEFT JOIN `likes`
ON `posts`.`id`= `likes`.`post_id`
WHERE `likes`. `post_id` IS NULL

-- 3 Conta il numero di like per ogni post (165 nel caso di query con SELECT + JOIN oppure 175 nel caso di query con sola SELECT)
SELECT *
FROM `posts`
INNER JOIN `likes`
ON `posts`.`id`= `likes`.`post_id`
(da completare)

-- 4 Ordina gli utenti per il numero di media caricati (25)
SELECT *
FROM `users`
INNER JOIN `medias`
ON `users`.`id` = `medias`.`user_id`
ORDER BY `user_id`
------->O
SELECT `medias`.`user_id`
FROM `users`
LEFT JOIN `medias`
ON `users`.`id` = `medias`.`user_id`
ORDER BY `medias`.`user_id` ASC


-- 5 Ordina gli utenti per totale di likes ricevuti nei loro posts (25)
