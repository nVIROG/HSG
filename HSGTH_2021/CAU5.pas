uses crt;
type
	arr = array[1..10007] of integer;
var
	n : longint;
	nhon, vuong, tu : longint;
	a : arr;
	i : integer;

	fi, fo : text;

procedure sort(var f : arr; l,r : integer);
var
	i,j : integer;
	mid : integer;
	tmp : integer;
begin
	i := l;
	j := r;
	mid := f[(i+j) div 2];

	repeat
		while (f[i] < mid) do inc(i);
		while (f[j] > mid) do dec(j);
		if (i <= j) then
		begin
			tmp := f[i];
			f[i] := f[j];
			f[j] := tmp;
			inc(i); dec(j);
		end;
	until i > j;

	if (i < r) then sort(f,i,r);
	if (j > l) then sort(f,l,j);
end;

procedure Process();
var
	i,j : longint;
	k : integer;
	r : longint;
begin
	nhon := 0;
	vuong := 0;
	tu := 0;

	k := 3;
	r := 0;

	for i:= 1 to n-2 do
	begin
		k := i+2;
		for j := i+1 to n-1  do
		begin
			if (k <= j) then k := j+1;
			while (k <= n) and (a[k] < a[i] + a[j]) do inc(k);
			r := r + (k-j-1);
		end;
	end;

	for i := 1 to n-2 do
	begin
		k := i+2;
		for j := i+1 to n-1 do
		begin
			if (k <= j) then k := j+1;
			while (k <= n) and ( (a[k] * a[k]) < ( (a[i] * a[i]) + (a[j] * a[j])) ) do inc(k);
			if ( (a[k] * a[k]) = ( (a[i] * a[i]) + (a[j] * a[j]))) then inc(vuong);
			nhon := nhon + (k-j-1);
		end;
	end;

	write(fo, nhon, ' ',vuong ,' ', r-vuong-nhon);
end;

begin
	clrscr;

	assign(fi, 'CAU5.inp');
	assign(fo, 'CAU5.out');
	reset(fi);
	rewrite(fo);

	readln(fi, n);
	for i := 1 to n-1 do read(fi, a[i]);
	readln(fi, a[n]);

	sort(a,1,n);
	Process;

	close(fi);
	close(fo);
end.