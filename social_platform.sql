-- 1 Seleziona gli utenti che hanno postato almeno un video
SELECT*
FROM `medias`
WHERE `type` LIKE "video"

-- 2 Seleziona tutti i post senza Like (13)
SELECT *
FROM `posts`
INNER JOIN `likes`
ON `posts`.`id`= `likes`.`post_id`
WHERE `post_id` IS NULL
--(non trova nulla)

-- 3 Conta il numero di like per ogni post (165 nel caso di query con SELECT + JOIN oppure 175 nel caso di query con sola SELECT)
SELECT *
FROM `posts`
INNER JOIN `likes`
ON `posts`.`id`= `likes`.`post_id`


-- 4 Ordina gli utenti per il numero di media caricati (25)
SELECT *
FROM `users`
INNER JOIN `medias`
ON `users`.`id` = `medias`.`user_id`