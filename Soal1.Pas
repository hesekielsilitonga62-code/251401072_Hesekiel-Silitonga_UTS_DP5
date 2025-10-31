Program soal1;
uses crt;

Var
    b, p, e, n, g                               : Integer;
    buku, pulpen, pensil, penghapus, penggaris  : Real;
    total, tothar, diskon, potongan, pajak      : Real;
    Metode                                      : String;


begin
clrscr;

    Write ('Masukkan Jumlah Buku            : ');
    read (b);

    buku := b * 25000;

    write ('Masukkan Jumlah Pulpen          : ');
    read (p);

    pulpen := p * 5000;

    write ('Masukkan Jumlah Pensil          : ');
    read (e);

    pensil := e * 3000;

    write ('Masukkan Jumlah Penghapus       : ');
    read (n);

    penghapus := n * 2000;

    write ('Masukkan Jumlah Penggaris       : ');
    readln (g);

    penggaris := g * 4000;

    total := buku + pulpen + pensil + penghapus + penggaris;

    if total >= 100000 then
        begin
            diskon := 0.1;
        end
    else 
        begin
            diskon := 0;
        end;

    writeln;

    Write ('Metode Pembayaran (QRIS/Tunai)  : ');
    readln (metode);

    case metode of
        'QRIS','Qris'   : potongan := 5000;
        'Tunai'         : pajak    := 0.05;
    end;

    tothar := total - (total * diskon) - potongan + (total * pajak);

    writeln;

    writeln ('Total Harga Sebelum Discount    : ', total : 0 : 2);
    writeln ('Seluruh Potongan dan Discount   : ', potongan + diskon : 0 : 2);
    writeln ('Total Akhir                     : ', tothar : 0 : 2)

end.