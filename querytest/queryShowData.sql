SELECT transaksi.id, transaksi.tgl_order, transaksi.status_pelunasan, transaksi.tgl_pembayaran, detail_transaksi.subtotal, detail_transaksi.jumlah
FROM transaksi
INNER JOIN detail_transaksi ON transaksi.id = detail_transaksi.id_transaksi;