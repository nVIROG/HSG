uses crt;
var
	s : int64;
	n : int64;

	i : int64;

	fi, fo : text;

begin
	clrscr;

	assign(fi, 'CAU1.inp');
	assign(fo, 'CAU1.out');

	reset(fi);
	rewrite(fo);

	readln(fi, n);


	s := 0;
	i := 2;
	while i <= n do
	begin
		s := s + (i-1)*i*(i+1);
		inc(i);
	end;

	writeln(fo, s);

	close(fi);
	close(fo);

end.