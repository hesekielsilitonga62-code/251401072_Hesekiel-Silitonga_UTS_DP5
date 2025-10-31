program soal4;
uses crt;

var
    n, i, jumlah, suku1sebelumn, suku2sebelumn, fibonaci, sukusetekahditambah   : integer;  

begin
clrscr;
    jumlah := 1;
    suku1sebelumn := 0;
    suku2sebelumn := 1;
    
    write ('N = ');
    read (n);

    write ('Sequence : ', suku1sebelumn, ', ', suku2sebelumn, ', ');
      for i := 3 to n do
        begin
                fibonaci := suku1sebelumn + suku2sebelumn;
                suku1sebelumn := suku2sebelumn;
                suku2sebelumn := fibonaci;
                write (fibonaci);

                if  i < n then
                    write(', ');
            
                jumlah := jumlah + fibonaci;
        end;

    writeln;
    write ('Jumlah : ', jumlah);
    end.