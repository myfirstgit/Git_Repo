print "directory to search:";
$dir=<STDIN>;chomp $dir;

print "oldpat:";
$oldpat=<STDIN>;chomp $oldpat;

print "newpat:";
$newpat=<STDIN>;chomp $newpat;

opendir(DH,"$dir")||die "cannot open $dir";
@files=readdir DH;
closedir(DH);
foreach(@files){
    $oldname=$_;
   s/$oldpat/$newpat/;
   next if (-e "$dir/$_");
   if (! rename "$dir/$oldname","$dir/$_"){
      warn "cannot rename $oldname  to $_:$!";
   }else{
   print "FILE $oldname rename to $_\n";
}
}
