uses crt;
type
	arr = array[1..2,1..400000] of longint;
var
	a : arr;
	i : longint;
	num : longint;
	cnt : longint;
	n, n2 : int64;

	fi, fo : text;

function isprime(x : longint) : boolean;
var i : longint;
begin
	if (x < 2) then exit(false);

	i := 2;
	while i*i <= x do
	begin
		if (x mod i) = 0 then exit(false);
		inc(i);
	end;

	exit(true);
end;



begin
	clrscr;

	assign(fi, 'THUASONT.inp'); reset(fi);
	assign(fo, 'THUASONT.out'); rewrite(fo);


	readln(fi, n);

	i := 1;
	num := 2;
	repeat
		if ((n mod num) = 0) and (isprime(num) = true) then
		begin
			a[1,i] := num;

			cnt := 0;
			repeat
				inc(cnt);
				n := n div num;
			until (n mod num) <> 0; 

			a[2,i] := cnt;
			inc(i);
		end;	

		inc(num);
	until (n <= 0) or (isprime(n) = true);

	if (n > 0) then
	begin
		a[1,i] := n;
		a[2,i] := 1;
		inc(i);
	end;

	writeln(fo, i-1);



	for cnt := 1 to i-1 do
	begin
		writeln(fo, a[1,cnt], ' ',a[2,cnt]);
	end;

	close(fi);
	close(fo);
end.