print "directory to search:";
$dir=<STDIN>;chomp $dir;

print "pat to search:";
$pat=<STDIN>;chomp $pat; 

opendir(DH,"$dir")||die "cannot open $dir";
while($file=readdir DH){
   open(F,"$dir/$file");
   while (<F>){
       if(/$pat/){
print "$file: $_\n";

}
}
close(F);          
}
closedir(DH);
