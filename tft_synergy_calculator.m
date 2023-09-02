%
% Brian Fader, 2023
%
clear
close all
clc
%
% League of Legends
% Teamfight Tactics
%
% This code will calculate a set of 8 champions
% that minimizes wasted traits and maximizes synergy
%
% Traits
%
% ch challenger
% dm demacia
% io ionia
% ju juggernaut
% no noxus
% sh shurima
% sl slayer
% so sorcerer
% ba bastion
% br bruiser
% de deadeye
% fr freljord
% gu gunner
% in invoker
% pt piltover
% ro rogue
% si shadow isles
% st strategist
% ta targon
% vo void
% yo yordle
% za zaun
% mt multicaster
%
% Trait matrix order
%
% [ ch dm io ju no sh sl so ba br de fr gu in pt ro si st ta vo yo za mt ]
%
% Column 1: ch
% Column 2: dm
% Column 3: io
% Column 4: ju
% Column 5: no
% Column 6: sh
% Column 7: sl
% Column 8: so
% Column 9: ba
% Column 10: br
% Column 11: de
% Column 12: fr
% Column 13: gu
% Column 14: in
% Column 15: pt
% Column 16: ro
% Column 17: si
% Column 18: st
% Column 19: ta
% Column 20: vo
% Column 21: yo
% Column 22: za
% Column 23: mt
%
syms ch dm io ju no sh sl so ba br de fr gu in pt ro si st ta vo yo za mt
%
trait = [ch dm io ju no sh sl so ba br de fr gu in pt ro si st ta vo yo za mt];
% Champions
%
% Aatrox
aatrox = zeros(1,23);
aatrox(4) = 1; aatrox(7) = 1; % Slayer, Juggernaut
%
% Ahri
ahri = zeros(1,23);
ahri(3) = 1; ahri(8) = 1; % Ionia, Sorcerer
%
% Akshan
akshan = zeros(1,23);
akshan(6) = 1; akshan(11) = 1; % Shurima, Deadeye
%
% Aphelios
aphelios = zeros(1,23);
aphelios(11) = 1; aphelios(19) = 1; % Targon, Deadeye
%
% Ashe
ashe = zeros(1,23);
ashe(11) = 1; ashe(12) = 1; % Freljord, Deadeye
%
% Azir
azir = zeros(1,23);
azir(6) = 1; azir(18) = 1; % Shurima, Strategist
%
% Bel'Veth
belveth = zeros(1,23);
belveth(20) = 1; % Void
%
% Cassiopeia
cassiopeia = zeros(1,23); 
cassiopeia(5) = 1; cassiopeia(6) = 1; cassiopeia(14) = 1; % Shurima, Noxus, Invoker
%
% Cho'Gath
chogath = zeros(1,23);
chogath(10) = 1; chogath(20) = 1; % Void, Bruiser
%
% Darius
darius = zeros(1,23);
darius(4) = 1; darius(5) = 1; % Noxus, Juggernaut
%
% Ekko
ekko = zeros(1,23);
ekko(15) = 1; ekko(16) = 1; ekko(22) = 1; % Piltover, Rogue, Zaun
%
% Galio
galio = zeros(1,23);
galio(2) = 1; galio(14) = 1; % Demacia, Invoker
%
% Garen
garen = zeros(1,23);
garen(2) = 1; garen(4) = 1; % Demacia, Juggernaut
%
% Gwen
gwen = zeros(1,23);
gwen(7) = 1; gwen(17) = 1; % Shadow Isles, Slayer
%
% Heimdinger
heimerdinger = zeros(1,23);
heimerdinger(15) = 1; heimerdinger(21) = 1; % Yordle, Piltover
%
% Irelia
irelia = zeros(1,23);
irelia(1) = 1; irelia(3) = 1; % Ionia, Challenger
%
% Jarvan IV
jarvan = zeros(1,23);
jarvan(2) = 1; jarvan(18) = 1; % Demacia, Strategist
%
% Jayce
jayce = zeros(1,23);
jayce(13) = 1; jayce(15) = 1; % Piltover, Gunner
%
% Jhin
jhin = zeros(1,23);
jhin(3) = 1; jhin(11) = 1; % Ionia, Deadeye
%
% Jinx
jinx = zeros(1,23);
jinx(13) = 1; jinx(22) = 1; % Zaun, Deadeye
%
% Kai'Sa
kaisa = zeros(1,23);
kaisa(1) = 1; kaisa(20) = 1; % Void, Challenger
%
% Kalista
kalista = zeros(1,23);
kalista(1) = 1; kalista(17) = 1; % Shadow Isles, Challenger
%
% Karma
karma = zeros(1,23);
karma(3) = 1; karma(14) = 1; % Ionia, Invoker
%
% Kassadin
kassadin = zeros(1,23);
kassadin(9) = 1; kassadin(20) = 1; % Void, Bastion
%
% Katarina
katarina = zeros(1,23);
katarina(5) = 1; katarina(16) = 1; % Noxus, Rogue
%
% Kayle
kayle = zeros(1,23);
kayle(2) = 1; kayle(7) = 1; % Demacia, Slayer
%
% Kled
kled = zeros(1,23);
kled(5) = 1; kled(7) = 1; kled(21) = 1; % Yordle, Slayer, Noxus
%
% K'Sante
ksante = zeros(1,23);
ksante(6) = 1; ksante(9) = 1; % Shurima, Bastion
%
% Lissandra
lissandra = zeros(1,23);
lissandra(12) = 1; lissandra(14) = 1; % Freljord, Invoker
%
% Lux
lux = zeros(1,23);
lux(2) = 1; lux(8) = 1; % Demacia, Sorcerer
%
% Malzahar
malzahar = zeros(1,23);
malzahar(8) = 1; malzahar(20) = 1; % Void, Sorcerer
%
% Maokai
maokai = zeros(1,23);
maokai(9) = 1; maokai(17) = 1; % Shadow Isles, Bastion
%
% Nasus
nasus = zeros(1,23);
nasus(4) = 1; nasus(6) = 1; % Shurima, Juggernaut
%
% Orianna
orianna = zeros(1,23);
orianna(8) = 1; orianna(15) = 1; % Piltover, Sorcerer
%
% Poppy
poppy = zeros(1,23);
poppy(2) = 1; poppy(9) = 1; poppy(21) = 1; % Yordle, Demacia, Bastion
%
% Rek'Sai
reksai = zeros(1,23);
reksai(10) = 1; reksai(20) = 1; % Void, Bruiser
%
% Renekton
renekton = zeros(1,23);
renekton(6) = 1; renekton(10) = 1; % Shurima, Bruiser
%
% Ryze
ryze = zeros(1,23);
ryze(14) = 1; % Invoker
%
% Samira
samira = zeros(1,23);
samira(1) = 1; samira(5) = 1; % Noxus, Challenger
%
% Sejuani
sejuani = zeros(1,23);
sejuani(10) = 1; sejuani(12) = 1; % Freljord, Bruiser
%
% Senna
senna = zeros(1,23);
senna(13) = 1; senna(17) = 1; % Shadow Isles, Gunner
%
% Sett
sett = zeros(1,23);
sett(3) = 1; sett(4) = 1; % Ionia, Juggernaut
%
% Shen
shen = zeros(1,23);
shen(3) = 1; shen(9) = 1; shen(14) = 1; % Ionia, Bastion, Invoker
%
% Sion
sion = zeros(1,23);
sion(5) = 1; sion(10) = 1; % Noxus, Bruiser
%
% Sona
sona = zeros(1,23);
sona(2) = 1; sona(23) = 1; % Demacia, Multicaster
%
% Soraka
soraka = zeros(1,23);
soraka( 14) = 1; soraka(19) = 1; % Targon, Invoker
%
% Swain
swain = zeros(1,23);
swain(5) = 1; swain(8) = 1; swain(18) = 1; % Noxus, Sorcerer, Strategist
%
% Taliyah
taliyah = zeros(1,23);
taliyah(6) = 1; taliyah(23) = 1; % Shurima, Multicaster
%
% Taric
taric = zeros(1,23);
taric(8) = 1; taric(9) = 1; taric(19) = 1; % Targon, Bastion, Sorcerer
%
% Teemo
teemo = zeros(1,23);
teemo(18) = 1; teemo(21) = 1; teemo(23) = 1; % Yordle, Strategist, Multicaster
%
% Tristana
tristana = zeros(1,23);
tristana(13) = 1; tristana(21) = 1; % Yordle, Gunner
%
% Urgot
urgot = zeros(1,23);
urgot(11) = 1; urgot(22) = 1; % Zaun, Deadeye
%
% Vel'Koz
velkoz = zeros(1,23);
velkoz(8) = 1; velkoz(20) = 1; velkoz(23) = 1; % Void, Sorcerer, Multicaster
%
% Vi
vi = zeros(1,23);
vi(10) = 1; vi(15) = 1; % Piltover, Bruiser
%
% Viego
viego = zeros(1,23);
viego(16) = 1; viego(17) = 1; % Shadow Isles, Rogue
%
% Warwick
warwick = zeros(1,23);
warwick(1) = 1; warwick(4) = 1; warwick(22) = 1; % Zaun, Challenger, Juggernaut
%
% Yasuo
yasuo = zeros(1,23);
yasuo(1) = 1; yasuo(3) = 1; % Ionia, Challenger
%
% Zed
zed = zeros(1,23);
zed(3) = 1; zed(7) = 1; zed(16) = 1; % Ionia, Rogue, Slayer
%
% Zeri
zeri = zeros(1,23);
zeri(13) = 1; zeri(22) = 1; % Zaun, Gunner
%
% Champion Trait set
champion_trait = [aatrox; ahri; akshan; aphelios; ashe; azir; belveth; cassiopeia; chogath; darius; ekko; galio; garen; gwen; heimerdinger; irelia; jarvan; jayce; jhin; jinx; ...
kaisa; kalista; karma; kassadin; katarina; kayle; kled; ksante; lissandra; lux; malzahar; maokai; nasus; orianna; poppy; reksai; renekton; ryze; samira; sejuani; senna; ...
shen; sion; sona; soraka; swain; taliyah; taric; teemo; tristana; urgot; velkoz; vi; viego; warwick; yasuo; zed; zeri];
%
% Champion Name set
champion_name = ["Aatrox"; "Ahri"; "Akshan"; "Aphelios"; "Ashe"; "Azir"; "Belveth"; "Cassiopeia"; "Chogath"; "Darius"; "Ekko"; "Galio"; "Garen"; "Gwen"; "Heimerdinger"; ...
"Irelia"; "Jarvan"; "Jayce"; "Jhin"; "Jinx"; "Kaisa"; "Kalista"; "Karma"; "Kassadin"; "Katarina"; "Kayle"; "Kled"; "Ksante"; "Lissandra"; "Lux"; "Malzahar"; "Maokai"; ...
"Nasus"; "Orianna"; "Poppy"; "Reksai"; "Renekton"; "Ryze"; "Samira"; "Sejuani"; "Senna"; "Shen"; "Sion"; "Sona"; "Soraka"; "Swain"; "Taliyah"; "Taric"; "Teemo"; ...
"Tristana"; "Urgot"; "Velkoz"; "Vi"; "Viego"; "Warwick"; "Yasuo"; "Zed"; "Zeri"];
% 
incomplete_traits = 2;
while incomplete_traits > 0 % Change this value to 1 to make the code complete in 1-5 seconds consistently
% Synergy checking code
set = cell(1,8);            % Pre-allocate set
rgen = randperm(58,8);      % Generate random set of 8 numbers from 1 to 58
for i = 1:8
    set{1,i} = champion_name(rgen(i));      % Generate a set of champions based on the random numbers
end
%
inc = zeros(1,23);          % Pre-allocate set
for n = 1:8
    inc = inc + champion_trait(rgen(n),:);      % Generate sum of traits
end
%
incomplete_traits = synergy(inc);              % Calculate synergy
end
%
fprintf('Champions for this set:\n');           % Display results
for r = 1:8
fprintf('%s\n',set{1,r});
end
fprintf('Number of incomplete traits = %d\n',incomplete_traits);
%
%%
% Function SYNERGY
%
function incomplete = synergy(set)
% SYNERGY takes INPUT [ ch dm io ju no sh sl so ba br de fr gu in pt ro si st ta vo yo za mt ]
% and returns number of incomplete trait sets

% Define matrix with traits
ch = set(1);
dm = set(2);
io = set(3);
ju = set(4);
no = set(5);
sh = set(6);
sl = set(7);
so = set(8);
ba = set(9);
br = set(10);
de = set(11);
fr = set(12);
gu = set(13);
in = set(14);
pt = set(15);
ro = set(16);
si = set(17);
st = set(18);
ta = set(19);
vo = set(20);
yo = set(21);
za = set(22);
mt = set(23);

% Challenger
if ch == 2
    ch_inc = 0;

    elseif ch == 4
            ch_inc = 0;

            elseif ch == 6
                    ch_inc = 0;

                    elseif ch == 8
                            ch_inc = 0;

                            elseif ch == 0
                                    ch_inc = 0;
    else
           ch_inc = 1;
end

% Demacia
if dm == 3
    dm_inc = 0;

    elseif dm == 5
            dm_inc = 0;

            elseif dm == 7
                    dm_inc = 0;

                    elseif dm == 9
                            dm_inc = 0;

                            elseif dm == 0
                                    dm_inc = 0;
    else
           dm_inc = 1;
end

% Ionia
if io == 3
    io_inc = 0;

    elseif io == 6
            io_inc = 0;

            elseif io == 9
                    io_inc = 0;

                    elseif io == 0
                            io_inc = 0;

    else
           io_inc = 1;
end

% Juggernaut
if ju == 2
    ju_inc = 0;

    elseif ju == 4
            ju_inc = 0;

            elseif ju == 6
                    ju_inc = 0;

                    elseif ju == 0
                            ju_inc = 0;

    else
           ju_inc = 1;
end

% Noxus
if no == 3
    no_inc = 0;

    elseif no == 6
            no_inc = 0;

            elseif no == 9
                    no_inc = 0;

                    elseif no == 0
                            no_inc = 0;

    else
           no_inc = 1;
end

% Shurima
if sh == 3
    sh_inc = 0;

    elseif sh == 5
            sh_inc = 0;

            elseif sh == 7
                    sh_inc = 0;

                    elseif sh == 9
                            sh_inc = 0;

                            elseif sh == 0
                                    sh_inc = 0;
    else
           sh_inc = 1;
end

% Slayer
if sl == 2
    sl_inc = 0;

    elseif sl == 3
            sl_inc = 0;

            elseif sl == 4
                    sl_inc = 0;

                    elseif sl == 5
                            sl_inc = 0;
                            
                            elseif sl == 6
                                    sl_inc = 0;

                                    elseif sl == 0
                                            sl_inc = 0;
    else
           sl_inc = 1;
end

% Sorcerer
if so == 2
    so_inc = 0;

    elseif so == 4
            so_inc = 0;

            elseif so == 6
                    so_inc = 0;

                    elseif so == 8
                            so_inc = 0;

                            elseif so == 0
                                    so_inc = 0;
else
           so_inc = 1;
end

% Bastion
if ba == 2
    ba_inc = 0;

    elseif ba == 4
            ba_inc = 0;

            elseif ba == 6
                    ba_inc = 0;

                    elseif ba == 8
                            ba_inc = 0;

                            elseif ba == 0
                                    ba_inc = 0;
    else
           ba_inc = 1;
end

% Bruiser
if br == 2
    br_inc = 0;

    elseif br == 4
            br_inc = 0;

            elseif br == 6
                    br_inc = 0;

                    elseif br == 0
                            br_inc = 0;
                    

    else
           br_inc = 1;
end

% Deadeye
if de == 2
    de_inc = 0;

    elseif de == 4
            de_inc = 0;

            elseif de == 6
                    de_inc = 0;

                    elseif de == 0
                            de_inc = 0;

    else
           de_inc = 1;
end

% Freljord
if fr == 2
    fr_inc = 0;

    elseif fr == 3
            fr_inc = 0;

            elseif fr == 4
                    fr_inc = 0;

                    elseif fr == 0
                            fr_inc = 0;

    else
           fr_inc = 1;
end

% Gunner
if gu == 2
    gu_inc = 0;

    elseif gu == 4
            gu_inc = 0;

            elseif gu == 6
                    gu_inc = 0;

                    elseif gu == 0
                           gu_inc = 0;


    else
           gu_inc = 1;
end

% Invoker
if in == 2
    in_inc = 0;

    elseif in == 4
            in_inc = 0;

            elseif in == 6
                    in_inc = 0;

                    elseif in == 0
                            in_inc = 0;


    else
           in_inc = 1;
end

% Piltover
if pt == 3
    pt_inc = 0;

    elseif pt == 6
            pt_inc = 0;

            elseif pt == 0
                    pt_inc = 0;

    else
           pt_inc = 1;
end

% Rogue
if ro == 2
    ro_inc = 0;

    elseif ro == 4
            ro_inc = 0;

            elseif ro == 0
                    ro_inc = 0;

    else
           ro_inc = 1;
end

% Shadow Isles
if si == 2
    si_inc = 0;

    elseif si == 4
            si_inc = 0;

            elseif si == 6
                    si_inc = 0;

                    elseif si == 0
                            si_inc = 0;

    else
           si_inc = 1;
end

% Strategist
if st == 2
    st_inc = 0;

    elseif st == 3
            st_inc = 0;

            elseif st == 4
                    st_inc = 0;

                    elseif st == 5
                            st_inc = 0;

                            elseif st == 0                             
                                    st_inc = 0;
    else
           st_inc = 1;
end

% Targon
if ta == 2
    ta_inc = 0;

    elseif ta == 3
            ta_inc = 0;

            elseif ta == 4
                    ta_inc = 0;

                    elseif ta == 0
                            ta_inc = 0;


    else
           ta_inc = 1;
end

% Void
if vo == 3
    vo_inc = 0;

    elseif vo == 6
            vo_inc = 0;

            elseif vo == 8
                    vo_inc = 0;

                    elseif vo == 0
                            vo_inc = 0;


    else
           vo_inc = 1;
end

% Yordle
if yo == 3
    yo_inc = 0;

    elseif yo == 5
            yo_inc = 0;

            elseif yo == 0
                    yo_inc = 0;


    else
           yo_inc = 1;
end

% Zaun
if za == 2
    za_inc = 0;

    elseif za == 4
            za_inc = 0;

            elseif za == 6
                    za_inc = 0;

                    elseif za == 0
                            za_inc = 0;
    

    else
           za_inc = 1;
end

% Multicaster
if mt == 2
    mt_inc = 0;

    elseif mt == 4
            mt_inc = 0;

            elseif mt == 0
                    mt_inc = 0;

    else
           mt_inc = 1;
end

% Sum incomplete traits

incomplete = ch_inc + dm_inc + io_inc + ju_inc + no_inc + sh_inc + sl_inc + so_inc + ba_inc + br_inc + de_inc ...
     + fr_inc + gu_inc + in_inc + pt_inc + ro_inc + si_inc + st_inc + ta_inc + vo_inc + yo_inc + za_inc + mt_inc;
end








