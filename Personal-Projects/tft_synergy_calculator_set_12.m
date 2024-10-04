%
% Brian Fader, 2024
%
clear
close all
clc
%
% League of Legends
% Teamfight Tactics
%
% This code will calculate a set of ? champions
% that minimizes wasted traits and maximizes synergy
%
% Traits
%
% ar arcana
% as ascendant
% ba bastion
% bq bat queen
% bl blaster
% ch chrono
% dr dragon
% du druid
% el eldritch
% ex explorer
% fa faerie
% fr frost
% ho honeymancer
% hu hunter
% in incantor
% ma mage
% mt multistriker
% po portal
% pr preserver
% py pyro
% ra ravenous
% sc scholar
% sh shapeshifter
% su sugarcraft
% va vanguard
% wa warrior
% wi witchcraft
%
% Trait matrix order
%
% [ ar as ba bq bl ch dr du el ex fa fr ho hu in ma mt po pr py ra sc sh su va wa wi ]
%
% Column 1: ar
% Column 2: as
% Column 3: ba
% Column 4: bq
% Column 5: bl
% Column 6: ch
% Column 7: dr
% Column 8: du
% Column 9: el
% Column 10: ex
% Column 11: fa
% Column 12: fr
% Column 13: ho
% Column 14: hu
% Column 15: in
% Column 16: ma
% Column 17: mt
% Column 18: po
% Column 19: pr
% Column 20: py
% Column 21: ra
% Column 22: sc
% Column 23: sh
% Column 24: su
% Column 25: va
% Column 26: wa
% Column 27: wi
%
syms ar as ba bq bl ch dr du el ex fa fr ho hu in ma mt po pr py ra sc sh su va wa wi
%
trait = [ar as ba bq bl ch dr du el ex fa fr ho hu in ma mt po pr py ra sc sh su va wa wi];
% Champions
%
% Ahri
ahri = zeros(1,27);
ahri(1) = 1; ahri(22) = 1; % Arcana, Scholar
%
% Akali
akali = zeros(1,27);
akali(17) = 1; akali(20) = 1; akali(26) = 1; % Pyro, Multistriker, Warrior
%
% Ashe
ashe = zeros(1,27);
ashe(9) = 1; ashe(17) = 1; % Eldritch, Multistriker
%
% Bard
bard = zeros(1,27);
bard(19) = 1; bard(22) = 1; bard(24) = 1; % Sugarcraft, Preserver, Scholar
%
% Blitzcrank
blitzcrank = zeros(1,27);
blitzcrank(13) = 1; blitzcrank(25) = 1; % Honeymancy, Vanguard
%
% Briar
briar = zeros(1,27); 
briar(9) = 1; briar(21) = 1; briar(23) = 1; % Ravenous, Eldritch, Shapeshifter
%
% Camille
camille = zeros(1,27);
camille(6) = 1; camille(17) = 1; % Chrono, Multistriker
%
% Cassiopeia
cassiopeia = zeros(1,27);
cassiopeia(15) = 1; cassiopeia(27) = 1; % Witchcraft, Incantor
%
% Diana
diana = zeros(1,27);
diana(3) = 1; diana(12) = 1; % Frost, Bastion
%
% Elise
elise = zeros(1,27);
elise(9) = 1; elise(23) = 1; % Eldritch, Shapeshifter
%
% Ezreal
ezreal = zeros(1,27);
ezreal(5) = 1; ezreal(18) = 1; % Portal, Blaster
%
% Fiora
fiora = zeros(1,27);
fiora(26) = 1; fiora(27) = 1; % Witchcraft, Warrior
%
% Galio
galio = zeros(1,27);
galio(16) = 1; galio(18) = 1; galio(25) = 1; % Portal, Mage, Vanguard
%
% Gwen
gwen = zeros(1,27);
gwen(24) = 1; gwen(26) = 1; % Sugarcraft, Warrior
%
% Hecarim
hecarim = zeros(1,27);
hecarim(1) = 1; hecarim(3) = 1; hecarim(17) = 1; % Arcana, Bastion, Multistriker
%
% Hwei
hwei = zeros(1,27);
hwei(5) = 1; hwei(12) = 1; % Frost, Blaster
%
% Jax
jax = zeros(1,27);
jax(6) = 1; jax(17) = 1; % Chrono, Multistriker
%
% Jayce
jayce = zeros(1,27);
jayce(18) = 1; jayce(23) = 1; % Portal, Shapeshifter
%
% Jhin
jhin = zeros(1,23);
jhin(3) = 1; jhin(11) = 1; % Ionia, Deadeye
%
% Jinx
jinx = zeros(1,27);
jinx(14) = 1; jinx(24) = 1; % Sugarcraft, Hunter
%
% Kalista
kalista = zeros(1,27);
kalista(11) = 1; kalista(17) = 1; % Faerie, Multistriker
%
% Karma
karma = zeros(1,27);
karma(6) = 1; karma(15) = 1; % Chrono, Incantor
%
% Kassadin
kassadin = zeros(1,27);
kassadin(17) = 1; kassadin(18) = 1; % Portal, Multistriker
%
% Katarina
katarina = zeros(1,27);
katarina(11) = 1; katarina(26) = 1; % Faerie, Warrior
%
% KogMaw
kogmaw = zeros(1,27);
kogmaw(13) = 1; kogmaw(14) = 1; % Honeymancy, Hunter
%
% Lillia
lillia = zeros(1,27);
lillia(3) = 1; lillia(11) = 1; % Faerie, Bastion
%
% Milio
milio = zeros(1,27);
milio(11) = 1; milio(22) = 1; % Faerie, Scholar
%
% Mordekaiser
mordekaiser = zeros(1,27);
mordekaiser(9) = 1; mordekaiser(25) = 1; % Eldritch, Vanguard
%
% Morgana
morgana = zeros(1,27);
morgana(4) = 1; morgana(19) = 1; morgana(27) = 1; % Bat Queen, Witchcraft, Preserver
%
% Nami
nami = zeros(1,27);
nami(9) = 1; nami(16) = 1; % Eldritch, Mage
%
% Nasus
nasus = zeros(1,27);
nasus(20) = 1; nasus(23) = 1; % Pyro, Shapeshifter
%
% Neeko
neeko = zeros(1,27);
neeko(23) = 1; neeko(27) = 1; % Witchcraft, Shapeshifter
%
% Nilah
nilah = zeros(1,27);
nilah(9) = 1; nilah(26) = 1; % Eldritch, Warrior
%
% Nomsy
nomsy = zeros(1,27);
nomsy(7) = 1; nomsy(14) = 1; % Dragon, Hunter
%
% Norra
norra = zeros(1,27);
norra(16) = 1; norra(18) = 1; % Portal, Mage
%
% Nunu
nunu = zeros(1,27);
nunu(3) = 1; nunu(13) = 1; % Honeymancy, Bastion
%
% Olaf
olaf = zeros(1,27);
olaf(12) = 1; olaf(14) = 1; % Frost, Hunter
%
% Poppy
poppy = zeros(1,27);
poppy(3) = 1; poppy(27) = 1; % Witchraft, Bastion
%
% Rakan
rakan = zeros(1,27);
rakan(11) = 1; rakan(19) = 1; % Faerie, Preserver
%
% Rumble
rumble = zeros(1,27);
rumble(5) = 1; rumble(24) = 1; rumble(25) = 1; % Sugarcraft, Blaster, Vanguard
%
% Ryze
ryze = zeros(1,27);
ryze(18) = 1; ryze(22) = 1; % Portal, Scholar
%
% Seraphine
seraphine = zeros(1,27);
seraphine(11) = 1; seraphine(16) = 1; % Faerie, Mage
%
% Shen
shen = zeros(1,27);
shen(3) = 1; shen(20) = 1; % Pyro, Bastion
%
% Shyvana
shyvana = zeros(1,27);
shyvana(7) = 1; shyvana(23) = 1; % Dragon, Shapeshifter
%
% Smolder
smolder = zeros(1,27);
smolder(5) = 1; smolder(7) = 1; % Dragon, Blaster
%
% Soraka
soraka = zeros(1,27);
soraka(16) = 1; soraka(24) = 1; % Sugarcraft, Mage
%
% Swain
swain = zeros(1,27);
swain(12) = 1; swain(23) = 1; % Frost, Shapeshifter
%
% Syndra
syndra = zeros(1,27);
syndra(9) = 1; syndra(15) = 1; % Eldritch, Incantor
%
% Tahm Kench
tahm = zeros(1,27);
tahm(1) = 1; tahm(25) = 1; % Arcana, Vanguard
%
% Taric
taric = zeros(1,27);
taric(3) = 1; taric(18) = 1; % Portal, Bastion
%
% Tristana
tristana = zeros(1,27);
tristana(5) = 1; tristana(11) = 1; % Faerie, Blaster
%
% Twitch
twitch = zeros(1,27);
twitch(12) = 1; twitch(14) = 1; % Frost, Hunter
%
% Varus
varus = zeros(1,27);
varus(5) = 1; varus(19) = 1; % Pyro, Blaster
%
% Veigar
veigar = zeros(1,27);
veigar(13) = 1; veigar(16) = 1; % Honeymancy, Mage
%
% Vex
vex = zeros(1,27);
vex(6) = 1; vex(16) = 1; % Chrono, Mage
%
% Warwick
warwick = zeros(1,27);
warwick(12) = 1; warwick(25) = 1; % Frost, Vanguard
%
% Wukong
wukong = zeros(1,27);
wukong(8) = 1; % Druid
%
% Xerath
xerath = zeros(1,27);
xerath(1) = 1; xerath(2) = 1; % Ascendant, Arcana
%
% Ziggs
ziggs = zeros(1,27);
ziggs(13) = 1; ziggs(15) = 1; % Honeymancy, Incantor
%
% Zilean
zilean = zeros(1,27);
zilean(6) = 1; zilean(12) = 1; zilean(19) = 1; % Chrono, Frost, Preserver
%
% Zoe
zoe = zeros(1,27);
zoe(18) = 1; zoe(22) = 1; zoe(27) = 1; % Portal, Witchcraft, Scholar
%
% Champion Trait set
champion_trait = [ahri; akali; ashe; bard; blitzcrank; briar; camille; cassiopeia; diana; elise; ezreal; fiora; galio; gwen; hecarim; hwei; jax; jayce; jinx; ...
kalista; karma; kassadin; katarina; kogmaw; lillia; milio; mordekaiser; morgana; nami; nasus; neeko; nilah; nomsy; norra; nunu; olaf; poppy; rakan; rumble; ryze; seraphine; ...
shen; shyvana; smolder; soraka; swain; syndra; tahm; taric; tristana; twitch; varus; veigar; vex; warwick; wukong; xerath; ziggs; zilean; zoe];
%
% Champion Name set
champion_name = ["Ahri"; "Akali"; "Ashe"; "Bard"; "Blitzcrank"; "Briar"; "Camille"; "Cassiopeia"; "Diana"; "Elise"; "Ezreal"; "Fiora"; "Galio"; "Gwen"; "Hecarim"; ...
"Hwei"; "Jax"; "Jayce"; "Jinx"; "Kalista"; "Karma"; "Kassadin"; "Katarina"; "Kogmaw"; "Lillia"; "Milio"; "Mordekaiser"; "Morgana"; "Nami"; ...
"Nasus"; "Neeko"; "Nilah"; "Nomsy"; "Norra"; "Nunu"; "Olaf"; "Poppy"; "Rakan"; "Rumble"; "Ryze"; "Seraphine"; "Shen"; "Shyvana"; "Smolder"; "Soraka"; "Swain"; ...
"Syndra"; "TahmKench"; "Taric"; "Tristana"; "Twitch"; "Varus"; "Veigar"; "Vex"; "Warwick"; "Wukong"; "Xerath"; "Ziggs"; "Zilean"; "Zoe"];
% 
incomplete_traits = 2;
while incomplete_traits > 1 % Change this value to 1 to make the code complete in 1-5 seconds consistently
% Synergy checking code
set = cell(1,8);            % Pre-allocate set
rgen = randperm(60,8);      % Generate random set of 8 numbers from 1 to 60
for i = 1:8
    set{1,i} = champion_name(rgen(i));      % Generate a set of champions based on the random numbers
end
%
inc = zeros(1,27);          % Pre-allocate set
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
% SYNERGY takes INPUT [ ar as ba bq bl ch dr du el ex fa fr ho hu in ma mt po pr py ra sc sh su va wa wi]
% and returns number of incomplete trait sets

% Define matrix with traits
ar = set(1);
as = set(2);
ba = set(3);
bq = set(4);
bl = set(5);
ch = set(6);
dr = set(7);
du = set(8);
el = set(9);
ex = set(10);
fa = set(11);
fr = set(12);
ho = set(13);
hu = set(14);
in = set(15);
ma = set(16);
mt = set(17);
po = set(18);
pr = set(19);
py = set(20);
ra = set(21);
sc = set(22);
sh = set(23);
su = set(24);
va = set(25);
wa = set(26);
wi = set(27);

% Arcana
if ar == 2
    ar_inc = 0;

    elseif ar == 3
            ar_inc = 0;

            elseif ar == 4
                    ar_inc = 0;

                    elseif ar == 5
                            ar_inc = 0;

                            elseif ar == 0
                                    ar_inc = 0;
    else
           ar_inc = 1;
end

% Ascendant
if as == 1
    as_inc = 0;

    elseif as == 0
        as_inc = 0;

    else
           as_inc = 1;
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

% Bat Queen
if bq == 1
    bq_inc = 0;

    elseif bq == 0
            bq_inc = 0;

    else
           bq_inc = 1;
end

% Blaster
if bl == 2
    bl_inc = 0;

    elseif bl == 4
            bl_inc = 0;

            elseif bl == 6
                    bl_inc = 0;

                    elseif bl == 0
                            bl_inc = 0;

    else
           bl_inc = 1;
end

% Chrono
if ch == 2
    ch_inc = 0;

    elseif ch == 4
            ch_inc = 0;

            elseif ch == 6
                    ch_inc = 0;

                    elseif ch == 0
                            ch_inc = 0;

    else
           ch_inc = 1;
end

% Dragon
if dr == 2
    dr_inc = 0;

    elseif dr == 3
            dr_inc = 0;

            elseif dr == 0
                    dr_inc = 0;

    else
           dr_inc = 1;
end

% Druid
if du == 1
    du_inc = 0;

    elseif du == 0
            du_inc = 0;

else
           du_inc = 1;
end

% Eldritch
if el == 3
    el_inc = 0;

    elseif el == 5
            el_inc = 0;

            elseif el == 7
                    el_inc = 0;

                    elseif el == 10
                            el_inc = 0;

                            elseif el == 0
                                    el_inc = 0;

    else
           el_inc = 1;
end

% Explorer
if ex == 1
    ex_inc = 0;

    elseif ex == 0
            ex_inc = 0;
                    
    else
           ex_inc = 1;
end

% Faerie
if fa == 3
    fa_inc = 0;

    elseif fa == 5
            fa_inc = 0;

            elseif fa == 7
                    fa_inc = 0;

                    elseif fa == 9
                            fa_inc = 0;

                        elseif fa == 0
                                 fa_inc = 0;

    else
           fa_inc = 1;
end

% Frost
if fr == 3
    fr_inc = 0;

    elseif fr == 5
            fr_inc = 0;

            elseif fr == 7
                    fr_inc = 0;

                    elseif fr == 9
                            fr_inc = 0;

                            elseif fr == 0
                                fr_inc = 0;

    else
           fr_inc = 1;
end

% Honeymancy
if ho == 3
    ho_inc = 0;

    elseif ho == 5
            ho_inc = 0;

            elseif ho == 7
                    ho_inc = 0;

                    elseif ho == 0
                           ho_inc = 0;


    else
           ho_inc = 1;
end

% Hunter
if hu == 2
    hu_inc = 0;

    elseif hu == 4
            hu_inc = 0;

            elseif hu == 6
                    hu_inc = 0;

                    elseif hu == 0
                            hu_inc = 0;


    else
           hu_inc = 1;
end

% Incantor
if in == 2
    in_inc = 0;

    elseif in == 4
            in_inc = 0;

            elseif in == 0
                    in_inc = 0;

    else
           in_inc = 1;
end

% Mage
if ma == 3
    ma_inc = 0;

    elseif ma == 5
            ma_inc = 0;

            elseif ma == 7
                    ma_inc = 0;

                elseif ma == 10
                        ma_inc = 0;

                  elseif ma == 0
                            ma_inc = 0;

    else
           ma_inc = 1;
end

% Multistriker
if mt == 3
    mt_inc = 0;

    elseif mt == 5
            mt_inc = 0;

            elseif mt == 7
                    mt_inc = 0;

                    elseif mt == 9
                            mt_inc = 0;

                            elseif mt == 0
                                 mt_inc = 0;

    else
           mt_inc = 1;
end

% Portal
if po == 3
    po_inc = 0;

    elseif po == 6
            po_inc = 0;

            elseif po == 8
                    po_inc = 0;

                    elseif po == 10
                            po_inc = 0;

                            elseif po == 0                             
                                    po_inc = 0;
    else
           po_inc = 1;
end

% Preserver
if pr == 2
    pr_inc = 0;

    elseif pr == 3
            pr_inc = 0;

            elseif pr == 4
                    pr_inc = 0;

                    elseif pr == 5
                            pr_inc = 0;

                            elseif pr == 0
                                pr_inc = 0;


    else
           pr_inc = 1;
end

% Pyro
if py == 2
    py_inc = 0;

    elseif py == 3
            py_inc = 0;

            elseif py == 4
                    py_inc = 0;

                    elseif py == 5
                            py_inc = 0;

                            elseif py == 0
                                py_inc = 0;

    else
           py_inc = 1;
end

% Ravenous
if ra == 1
    ra_inc = 0;

    elseif ra == 0
            ra_inc = 0;

    else
           ra_inc = 1;
end

% Scholar
if sc == 2
    sc_inc = 0;

    elseif sc == 4
            sc_inc = 0;

            elseif sc == 6
                    sc_inc = 0;

                    elseif sc == 0
                            sc_inc = 0;
    

    else
           sc_inc = 1;
end

% Shapeshifter
if sh == 2
    sh_inc = 0;

    elseif sh == 4
            sh_inc = 0;

            elseif sh == 6
                    sh_inc = 0;

                    elseif sh == 8
                            sh_inc = 0;

                            elseif sh == 0
                                sh_inc = 0;

    else
           sh_inc = 1;
end

% Sugarcraft
if su == 2
    su_inc = 0;

    elseif su == 4
            su_inc = 0;

            elseif su == 6
                    su_inc = 0;

                    elseif su == 0
                            su_inc = 0;
    

    else
           su_inc = 1;
end

% Vanguard
if va == 2
    va_inc = 0;

    elseif va == 4
            va_inc = 0;

            elseif va == 6
                    va_inc = 0;

                    elseif va == 0
                            va_inc = 0;
    

    else
           va_inc = 1;
end

% Warrior
if wa == 2
    wa_inc = 0;

    elseif wa == 4
            wa_inc = 0;

            elseif wa == 6
                    wa_inc = 0;

                    elseif wa == 0
                            wa_inc = 0;
    

    else
           wa_inc = 1;
end

% Witchcraft
if wi == 2
    wi_inc = 0;

    elseif wi == 4
            wi_inc = 0;

            elseif wi == 6
                    wi_inc = 0;

                    elseif wi == 8
                            wi_inc = 0;

                            elseif wi == 0
                                wi_inc = 0;

    else
           wi_inc = 1;
end

% Sum incomplete traits

incomplete = ar_inc + as_inc + ba_inc + bq_inc + bl_inc + ch_inc + dr_inc + du_inc + el_inc + ex_inc + fa_inc ...
     + fr_inc + ho_inc + hu_inc + in_inc + ma_inc + mt_inc + po_inc + pr_inc + py_inc + ra_inc + sc_inc + sh_inc + su_inc + va_inc + wa_inc + wi_inc;
end








