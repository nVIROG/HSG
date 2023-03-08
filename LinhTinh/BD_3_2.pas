 program tao_bang;
           uses crt;
           var 
               i: Integer ;                            {chi so cua hang}
               j: Integer ;                            {chi so cua cot}
           begin 
           clrscr; {xóa màn hình}
               for i:=0 to 9 do              {viet theo tung hang}
           begin
               for j:=0 to 9 do              {viet theo tung cot tren moi hang}
                    write(10*i+j:4);         {viet cac so ij ra man hinh}
                    write;                         {xuong hang moi}
           end;                                    {xong hang thu i} 
           readln;                               {dung chuong trinh de xem ket qua}
          end.