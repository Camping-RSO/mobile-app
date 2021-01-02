import 'models/Avtokamp.dart';
import 'models/Cenik.dart';
import 'models/Drzava.dart';
import 'models/KampirnoMesto.dart';
import 'models/Kategorija.dart';
import 'models/Mnenje.dart';
import 'models/Regija.dart';
import 'models/Rezervacija.dart';
import 'models/Slika.dart';
import 'models/StatusRezervacije.dart';
import 'models/Uporabnik.dart';
import 'models/VrstaKampiranja.dart';

Uporabnik currentUser = Uporabnik(
    "Anže", "Luzar", "anze.luzar@gmail.com", "lala");
bool dataLoaded = false;

List<Avtokamp> avtokampi = [];
List<Cenik> ceniki = [];
List<Drzava> drzave = [];
List<KampirnoMesto> kampirnaMesta = [];
List<Kategorija> kategorije = [];
List<Mnenje> mnenja = [];
List<Regija> regije = [];
List<Rezervacija> rezervacije = [];
List<Slika> slike = [];
List<StatusRezervacije> statusiRezervacij = [];
List<VrstaKampiranja> vrsteKampiranj = [];

List<String> priljubljeniKampi = [];

int kategorija = 1;

var uporabniki = [Uporabnik.hardcode(14, 'Nov', 'CEGU', null, '012821225', 'dabeu@cegu.com'),
    Uporabnik.hardcode(1, 'Don', 'CEGU', null, null, 'test@test.com'),
    Uporabnik.hardcode(6, 'Anze', 'Anze', null, '012821225', 'anze@gmail.com'),
    Uporabnik.hardcode(7, 'lala@lala.com', 'lala@lala.com', null, '012821225', 'lala@lala.com'),
    Uporabnik.hardcode(8, 'John', 'Doe', null, '012821225', 'john.doe@gmail.com'),
    Uporabnik.hardcode(13, 'CEGU NA', 'BETON', null, '012345678', 'test1@test.com'),
    Uporabnik.hardcode(12, 'Brale', 'Jede', null, '012821225', 'brale@jede.com'),
    Uporabnik.hardcode(2, 'Jane', 'Doe', null, '012821225', 'jane.doe@gmail.com')];