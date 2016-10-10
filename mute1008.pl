use Time::HiRes;

$name = "mute100";
$color = 0;

for(my $i = 0;$i <= 9;$i++){
    exec("tput","setaf",$color)unless(fork());
    system("banner",$name.$i);

    if($i == 9){$i = 0}
    if($color == 8){$color = 0}

    $color++;
    Time::HiRes::sleep(0.1);
}
