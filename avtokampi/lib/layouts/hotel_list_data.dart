import 'package:avtokampi/globals.dart' as globals;
import 'package:avtokampi/models/Avtokamp.dart';
import 'package:avtokampi/models/Cenik.dart';
import 'package:avtokampi/models/Drzava.dart';
import 'package:avtokampi/models/Mnenje.dart';
import 'package:avtokampi/models/Regija.dart';
import 'package:avtokampi/models/Slika.dart';
import 'package:flutter/widgets.dart';

class HotelListData {
    HotelListData({
        this.imagePath,
        this.titleTxt = '',
        this.subTxt = "",
        this.dist = "",
        this.reviews = 80,
        this.rating = 4.5,
        this.perNight = 180,
        this.avtokamp,
        this.mnenja
    });

    Image imagePath;
    String titleTxt;
    String subTxt;
    String dist;
    double rating = 4.5;
    int reviews;
    int perNight;
    Avtokamp avtokamp;
    List<Mnenje> mnenja;

    static Image getSlikaZaKamp(int kampId) {
        for (Slika slika in globals.slike) {
            if (slika.avtokamp == kampId) {
                return Image.network(slika.url, fit: BoxFit.cover);
            }
        }
        return Image.network(globals.slike[0].url, fit: BoxFit.cover);
    }

    static List<Cenik> getCenikiZaKamp(int kampId) {
        List<Cenik> cenikiList = [];
        for (Cenik c in globals.ceniki) {
            if (c.avtokamp == kampId) {
                cenikiList.add(c);
            }
        }
        return cenikiList;
    }

    static List getStMnenjZaKamp(int kampId) {
        List<Mnenje> mnenja = [];
        int stMnenj = 0;
        double povprecnaOcena = 0;
        for (Mnenje m in globals.mnenja) {
            if (m.avtokamp == kampId) {
                stMnenj++;
                mnenja.add(m);
                povprecnaOcena += m.ocena;
            }
        }
        return [stMnenj, povprecnaOcena / stMnenj, mnenja];
    }

    static String getDrzavaZaKamp(int regijaId) {
        for (Regija r in globals.regije) {
            if (r.id == regijaId) {
                for (Drzava d in globals.drzave) {
                    if (d.id == r.drzava) {
                        return d.naziv;
                    }
                }
            }
        }
        return "Hrvatska";
    }

    static List<HotelListData> getKampiList() {
        List<HotelListData> avtokampiList = new List<HotelListData>();
        if (globals.avtokampi.isNotEmpty) {
            for (Avtokamp kamp in globals.avtokampi) {
                List<Cenik> cenikiZaKamp = getCenikiZaKamp(kamp.id);
                int cena = 50;
                if (cenikiZaKamp.length != 0) {
                    cena = cenikiZaKamp[0].cena.toInt();
                }
                List l = getStMnenjZaKamp(kamp.id);
                int stMnenj = l[0];
                double povprOcena = l[1];
                List<Mnenje> mnenja = l[2];
                avtokampiList.add(HotelListData(
                    imagePath: getSlikaZaKamp(kamp.id),
                    titleTxt: kamp.naziv,
                    subTxt: kamp.nazivLokacije,
                    dist: getDrzavaZaKamp(kamp.regija),
                    reviews: stMnenj,
                    rating: povprOcena,
                    perNight: cena,
                    avtokamp: kamp,
                    mnenja: mnenja));
            }
        }
        return avtokampiList;
    }
}
