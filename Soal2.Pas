Program  soal2;
uses crt;

label a;

Var
    Angka_Rahasia, Tebakan   : Integer;

begin
clrscr;
    Writeln ('SELAMAT DATANG USER');
    writeln ('Ayo Main Tebak-Tebakkan!');
    writeln ('Tebak Angka yang Kami Sembunyikan');

    writeln;

    Angka_Rahasia := 3;

    a:

    write ('Masukkan Tebakan : ');
    read (Tebakan);

        if tebakan < 3 then
            begin
                writeln ('Terlalu Kecil!');
                goto a;
            end
        else if tebakan = 3 then
            begin
                writeln;
                writeln ('Selamat Kamu Benar!');
            end
        else
        begin
            writeln ('Terlalu Besar!');
            goto a;
        end;

    write ('Terima Kasih');


end.