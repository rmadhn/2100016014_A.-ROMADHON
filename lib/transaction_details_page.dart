import 'package:flutter/material.dart';

class TransactionDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet / Transaction Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rp455.000',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Text(
              'Pembayaran Berhasil',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            SizedBox(height: 16.0),
            _buildDetailRow('Provider', 'Nexhome'),
            _buildDetailRow('ID Pelanggan', '112345678921'),
            _buildDetailRow('Paket Layanan', 'Nexhome 100 Mbps'),
            _buildDetailRow('No. Transaksi', 'BC444724669897648110'),
            _buildDetailRow('Waktu Transaksi', '15 Feb 2024 10:32'),
            _buildDetailRow('Jumlah Tagihan', 'Rp450.000'),
            _buildDetailRow('Convenience Fee', 'Rp5.000'),
            _buildDetailRow('Payment Method', 'BCA Virtual Account'),
            SizedBox(height: 16.0),
            Text(
              'Proses verifikasi transaksi dapat memakan waktu hingga 1x24 jam.',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}
