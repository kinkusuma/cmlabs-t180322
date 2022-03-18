SELECT
    posts.id,
    posts.text,
    posts.user_id,
    posts.created_at,
    posts.updated_at,
    COUNT(post_likes.post_id) AS total_likes
FROM
    posts
INNER JOIN post_likes ON posts.user_id = post_likes.user_id
WHERE
    posts.user_id = {{user id}}
GROUP BY
    post_likes.post_id
