SELECT S.seats_code
FROM orders AS O
JOIN order_seats AS OS ON O.id = OS.orders_id
JOIN seats AS S ON OS.seats_id = S.id
WHERE O.id_schedule = 1 AND O.ispaid = TRUE;