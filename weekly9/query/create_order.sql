INSERT INTO "orders" (id_users, id_schedule, id_payment, full_name, email, phone_number, total_price, ispaid, created_at)
VALUES (1, 1, 1, 'habib', 'habib@mail.com', '081234567890', 50000, true, NOW())
RETURNING id;