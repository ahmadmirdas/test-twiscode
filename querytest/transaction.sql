CREATE DATABASE transaksi;
CREATE USER mirdas WITH PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE "transaksi" to mirdas;
\connect transaksi;

-- CREATE TABLE transaksi
CREATE TABLE IF NOT EXISTS public.transaksi (
    id SERIAL PRIMARY KEY,
    tgl_order DATE,
    status_pelunasan VARCHAR(10),
    tanggal_pembayaran DATE,
    created_on TIMESTAMP NOT NULL,
    last_update TIMESTAMP
);
GRANT ALL ON public.transaksi TO mirdas;

-- SEED DEFAULT TRANSAKSI DATA
INSERT INTO public.transaksi (tgl_order, status_pelunasan, tanggal_pembayaran, created_on)
VALUES  ('2021-02-09', 'lunas', '2021-02-11', now()),
        ('2021-02-08', 'pending', '2021-02-10', now()),

-- CREATE TABLE detail_transaksi
CREATE TABLE IF NOT EXISTS public.detail_transaksi (
    id SERIAL PRIMARY KEY,
    id_transaksi INT,
    harga INT,
    jumlah INT,
    subtotal INT,
    created_on TIMESTAMP NOT NULL,
    last_update TIMESTAMP
);
GRANT ALL ON public.detail_transaksi TO mirdas;

-- SEED DEFAULT DETAIL TRANSAKSI DATA
INSERT INTO public.detail_transaksi (id_transaksi, harga, jumlah, subtotal, created_on)
VALUES  ('1', 10000, 1, 10000, now()),
        ('2', 20000, 2, 40000, now()),

GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO mirdas;