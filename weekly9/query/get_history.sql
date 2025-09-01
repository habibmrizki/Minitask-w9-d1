SELECT id, total_price, ispaid, created_at, id_schedule
FROM orders
WHERE id_users = 1
ORDER BY created_at DESC
LIMIT 10 OFFSET 0;