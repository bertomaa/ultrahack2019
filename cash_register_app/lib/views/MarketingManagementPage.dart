import 'package:cash_register_app/classes/FacebookApiManagement.dart';
import 'package:flutter/material.dart';

class MarketingManagementPage extends StatefulWidget {
  MarketingManagementPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MarketingManagementPageState createState() =>
      _MarketingManagementPageState();
}

class _MarketingManagementPageState extends State<MarketingManagementPage> {
  int campaignToShow = 0;
  Map campaigns = {
    0: {
      "Title": "",
      "Text": "",
      "IdProduct": "",
      "Price": "",
      "Facebook": true,
      "Instagram": true,
      "FacebookSliders": {
        "MinAge": 25.0,
        "MaxAge": 30.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "InstagramSliders": {
        "MinAge": 25.0,
        "MaxAge": 30.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "GoogleAdsSliders": {
        "MinAge": 18.0,
        "MaxAge": 30.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
    },
    1: {
      "Title": "Franciacorta Brut DOCG 'Alma Gran Cuvée' - Bellavista",
      "Text":
          "Giallo paglierino con riflessi verdognoli. Il perlage è fine e continuo, con abbondante e persistente corona.Al naso il profumo è ampio e abbraccia sfumature di frutta dolce e leggermente matura con sottili accenni di vegetali e vaniglia. In bocca è sapido e completo, fresco e vibrante con un ritorno delle note percepite al naso. Il finale è lungo, elegante e armonioso.",
      "IdProduct": "0001",
      "Price": "25,90",
      "Facebook": true,
      "Instagram": true,
      "FacebookSliders": {
        "MinAge": 35.0,
        "MaxAge": 65.0,
        "Distance": 10.0,
        "Budget": 40.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "InstagramSliders": {
        "MinAge": 20.0,
        "MaxAge": 30.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "GoogleAdsSliders": {
        "MinAge": 23.0,
        "MaxAge": 35.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
    },
    2: {
      "Title": "Franciacorta DOCG “Cuvée Prestige” - Ca’ del Bosco",
      "Text":
          "Alla vista, color giallo paglierino, lucente. Perlage fine e persistente. All’olfatto, mostra sentori delicati di fiori bianchi e frutta a polpa gialla, con un bel sentore di pasticceria e un lieve rimando erbaceo. Gusto piacevole, pulito e vivace, si distende armonicamente su una trama minerale spiccata e note di frutta esotica.",
      "IdProduct": "0002",
      "Price": "29,40",
      "Facebook": true,
      "Instagram": true,
      "FacebookSliders": {
        "MinAge": 35.0,
        "MaxAge": 55.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "InstagramSliders": {
        "MinAge": 36.0,
        "MaxAge": 55.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "GoogleAdsSliders": {
        "MinAge": 45.0,
        "MaxAge": 65.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
    },
    3: {
      "Title": "Trento DOC “Perlé” 2013 - Ferrari",
      "Text":
          "Giallo intenso con riflessi dorati, dal perlage finissimo e persistente. Al naso esprime un bouquet intenso di particolare finezza, con sentori di fiori di mandorlo e mela renetta, leggermente speziato con un accenno di crosta di pane. Al palato è seducente ed elegante, con una sensazione vellutata molto lunga in cui si avverte una leggera nota fruttata di mela matura, piacevoli sentori di lievito e mandorla dolce e uno sfumato fondo aromatico tipico dello chardonnay.",
      "IdProduct": "0003",
      "Price": "24,90",
      "Facebook": true,
      "Instagram": true,
      "FacebookSliders": {
        "MinAge": 20.0,
        "MaxAge": 30.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "InstagramSliders": {
        "MinAge": 30.0,
        "MaxAge": 50.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "GoogleAdsSliders": {
        "MinAge": 30.0,
        "MaxAge": 50.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
    },
    4: {
      "Title":
          "Reggiano Lambrusco DOC “Piazza San Prospero” 2018 - Ca’ de’ Medici",
      "Text":
          "All’esame visivo si presenta con una veste rosso rubino intensa, con leggeri riflessi tendenti al violaceo. Lo spettro olfattivo si organizza intorno ad aromi fruttati dove è soprattutto il lampone a recitare il ruolo di protagonista, alternati a sentori erbacei e minerali. Al palato è morbido e avvolgente, caratterizzato da una buona struttura.",
      "IdProduct": "0004",
      "Price": "5,99",
      "Facebook": true,
      "Instagram": true,
      "FacebookSliders": {
        "MinAge": 30.0,
        "MaxAge": 50.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "InstagramSliders": {
        "MinAge": 25.0,
        "MaxAge": 35.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "GoogleAdsSliders": {
        "MinAge": 18.0,
        "MaxAge": 30.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
    },
    5: {
      "Title": "Champagne Brut 2009 Magnum - Dom Pérignon",
      "Text":
          "Giallo paglierino vivo e luminoso, dal perlage fine e persistente. Al naso esprime bellissime note tostate e floreali che via via lasciano spazio a tracce di ananas e più in generale di agrumi. Un tocco di speziato apre ad un assaggio profondo e complesso, materico e vellutato, fresco ed equilibrato. Armonioso ed elegantissimo, chiude con un finale di impeccabile pulizia e compostezza.",
      "IdProduct": "0005",
      "Price": "432,70",
      "Facebook": true,
      "Instagram": true,
      "FacebookSliders": {
        "MinAge": 35.0,
        "MaxAge": 60.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "InstagramSliders": {
        "MinAge": 35.0,
        "MaxAge": 60.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "GoogleAdsSliders": {
        "MinAge": 35.0,
        "MaxAge": 60.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
    },
    6: {
      "Title":
          "Chianti Classico Gran Selezione DOCG “Il Solatio” 2015 Magnum - Castello di Albola (cassetta di legno)",
      "Text":
          "Nel calice si presenta con un colore rosso rubino. Lo spettro olfattivo ruota intorno a sensazioni che ricordano la frutta sotto diverse forme - con un accenno anche alla mostarda - e le spezie dolci. Al palato è di corpo medio, fine, con un sorso di raffinata eleganza, caratterizzato da un tannino teso.",
      "IdProduct": "0006",
      "Price": "111,10",
      "Facebook": true,
      "Instagram": true,
      "FacebookSliders": {
        "MinAge": 20.0,
        "MaxAge": 40.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "InstagramSliders": {
        "MinAge": 20.0,
        "MaxAge": 40.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      },
      "GoogleAdsSliders": {
        "MinAge": 18.0,
        "MaxAge": 40.0,
        "Distance": 10.0,
        "Budget": 10.0,
        "Days": 2.0,
        "Enabled": true,
      }
    }
  };
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        new Container(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Card(
              child: new ListView(
                children: _buildAllCampainsWidget(),
              ),
            ),
          ),
        ),
        _showCampaign(),
      ],
    );
  }

  _buildAllCampainsWidget() {
    List<Widget> a = new List<Widget>();
    int i = 0;
    a.add(
      ListTile(
        title: Text("Nuova Campagna"),
        subtitle: Text("Aggiungi una nuova campagna"),
        trailing: Icon(Icons.add),
        onTap: () {
          setState(() {
            campaignToShow = 0;
          });
        },
      ),
    );
    while (i < 6) {
      i++;
      int id = i;
      a.add(
        ListTile(
          title: Text("Campagna $i"),
          subtitle: Text("Dettagli della campagna $i"),
          onTap: () {
            setState(() {
              campaignToShow = id;
            });
          },
        ),
      );
    }
    return a;
  }

  _showCampaign() {
    TextEditingController titleController = new TextEditingController();
    TextEditingController textController = new TextEditingController();
    TextEditingController idController = new TextEditingController();
    bool facebookBool, instagramBool;

    titleController.text = campaigns[campaignToShow]["Title"];
    textController.text = campaigns[campaignToShow]["Text"];
    idController.text = campaigns[campaignToShow]["IdProduct"];
    facebookBool = campaigns[campaignToShow]["Facebook"];
    instagramBool = campaigns[campaignToShow]["Instagram"];

    return new Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Card(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: titleController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        icon: const Icon(Icons.title),
                        hintText: 'Titolo del Post',
                        labelText: 'Titolo:',
                      ),
                    ),
                  ),
                  new Container(
                    width: 100,
                    height: 100,
                    child: Icon(Icons.add_a_photo),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new TextFormField(
                        maxLines: 30,
                        controller: textController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          icon: const Icon(Icons.text_fields),
                          hintText: 'Contenuto del Post',
                          labelText: 'Contenuto:',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new TextFormField(
                        controller: idController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          icon: const Icon(Icons.perm_identity),
                          hintText: 'ID Prodotto',
                          labelText: 'ID:',
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: facebookBool,
                        onChanged: (value) {
                          facebookBool = value;
                        },
                      ),
                      Text("Facebook"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: instagramBool,
                        onChanged: (value) {
                          instagramBool = value;
                        },
                      ),
                      Text("Instagram"),
                    ],
                  ),
                  RaisedButton(
                    child: Text("Publish!"),
                    onPressed: () {
                      FacebookApi.post();
                    },
                  ),
                  Container(
                    height: 200,
                  ),

                  /*Post
                        titolo
                        foto -- testo
                        id prodotto
                        dove
                        */
                  /*Pagamento
                        eta
                        zona
                        budget
                        periodo
                        dove
                        */
                ],
              ),
            ),
          ),
        ),
        new Column(
          children: <Widget>[
            _buildAdsSliders(
                campaigns[campaignToShow]["FacebookSliders"], "Facebook"),
            _buildAdsSliders(
                campaigns[campaignToShow]["InstagramSliders"], "Instagram"),
            _buildAdsSliders(
                campaigns[campaignToShow]["GoogleAdsSliders"], "Google Ads"),
            Text("Costo totale: € " +
                (campaigns[campaignToShow]["FacebookSliders"]["Budget"] +
                        campaigns[campaignToShow]["InstagramSliders"]
                            ["Budget"] +
                        campaigns[campaignToShow]["GoogleAdsSliders"]["Budget"])
                    .toString()
                    .substring(0, 2))
          ],
        ),
      ],
    );
  }

  _buildAdsSliders(Map parameters, String title) {
    _ageSliderChanged(RangeValues newValue) {
      setState(() {
        parameters["MinAge"] = newValue.start;
        parameters["MaxAge"] = newValue.end;
      });
    }

    _budgetSliderChanged(double newValue) {
      setState(() {
        parameters["Budget"] = newValue;
      });
    }

    _distanceSliderChanged(double newValue) {
      setState(() {
        parameters['Distance'] = newValue;
      });
    }

    _daysSliderChanged(double newValue) {
      setState(() {
        parameters['Days'] = newValue;
      });
    }

    return new Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Card(
          child: new Column(
            children: <Widget>[
              new ListTile(
                title: Text(title + ":"),
                trailing: Switch(
                  value: parameters["Enabled"],
                  onChanged: (newvalue) {
                    setState(() {
                      parameters["Enabled"] = newvalue;
                    });
                  },
                ),
              ),
              !parameters["Enabled"]
                  ? Container()
                  : new Row(
                      children: <Widget>[
                        Text(
                            "Età: ${parameters["MinAge"].toString().split(".").elementAt(0)} - ${parameters["MaxAge"].toString().split(".").elementAt(0)} "),
                        Expanded(
                          child: RangeSlider(
                            min: 13,
                            max: 70,
                            onChanged: (newRange) {
                              _ageSliderChanged(newRange);
                            },
                            values: RangeValues(
                                parameters["MinAge"], parameters["MaxAge"]),
                          ),
                        ),
                      ],
                    ),
              !parameters["Enabled"]
                  ? Container()
                  : new Row(
                      children: <Widget>[
                        Text(
                            "Distanza: ${parameters['Distance'].toString().split(".").elementAt(0)} "),
                        Expanded(
                          child: Slider(
                            label: "${parameters['Distance']}",
                            min: 1,
                            max: 20,
                            onChanged: (double newValue) {
                              _distanceSliderChanged(newValue);
                            },
                            value: parameters['Distance'],
                          ),
                        ),
                      ],
                    ),
              !parameters["Enabled"]
                  ? Container()
                  : new Row(
                      children: <Widget>[
                        Text(
                            "Budget: ${parameters['Budget'].toString().split(".").elementAt(0)} "),
                        Expanded(
                          child: Slider(
                            label: "${parameters['Budget']}",
                            min: 5,
                            max: 100,
                            onChanged: (double newValue) {
                              _budgetSliderChanged(newValue);
                            },
                            value: parameters['Budget'],
                          ),
                        ),
                      ],
                    ),
              !parameters["Enabled"]
                  ? Container()
                  : new Row(
                      children: <Widget>[
                        Text(
                            "Days: ${parameters['Days'].toString().split(".").elementAt(0)} "),
                        Expanded(
                          child: Slider(
                            label: "${parameters['Days']}",
                            min: 1,
                            max: 7,
                            onChanged: (double newValue) {
                              _daysSliderChanged(newValue);
                            },
                            value: parameters['Days'],
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
