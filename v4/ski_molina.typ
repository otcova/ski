#import "@preview/tiaoma:0.3.0"
#import "@preview/oxifmt:0.2.1": strfmt

#set page(height: auto)
#show link: set text(fill: blue, weight: 700)
#show link: underline
#set document(title: [Molina - 5 dies])
#set heading(numbering: "1.a.")

#show heading.where(level: 2): set block(above: 1em, below: 0.5em)
#show heading.where(level: 1): it => {
  set block(above: 0pt, below: 0pt)
  v(3em)
  it
  v(4pt)
  line(length: 100%)
  v(0.5em)
}

#title()

*Sortida:* Dissabte 31 matí (\~5:15 am if "tren")\
*Arribada:* Dimecres 4 nit

= Material
== Common
- Pijames (4 nits)
- Samarretes (4 dies)
- Pantalons llargs (4 dies)
- Roba interior (4 dies + extres)
- Dessuadora / Jersey (Portar posat)
- Xancles
- Tovallola ducha
- Material d'entreteniment tangible
- Paraigues
- Raspall i sabo de dents
- Sac de dormir (Ot, Ax, Xf, Ur)

== Snow / Ski
- Anorac gran impermeable (Portar posat)
- Ski goggles
- Guants (impermeables si has de caure repetidament)
- Buff (Opcional)
- Mitjons llargs (poden ser normals)
- Pantalons impermeables!
- Petita tovallola (Opcional)
- Cantimplora / ampolla d'aigua
- Mochila PETITA (per portar aigua, tovallola, paraigues i poc mes)

== Shared?
- Carregador mobil (3+ persones): Ot, ...
- Crema solar (2+ persones): Ot, ...
- Sabó Ducha (6 $times$ 4 cops despres de ski): ...





= Transport - "Tren" R3 (+4h)

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
)[
== Obres
Hi han
#link("https://rodalies.gencat.cat/ca/detalls/article/06_12_PAT_R3")[obres en R3],
i haurem d'agafar un
#link("https://rodalies.gencat.cat/web/.content/01_Actualitat/2025/06_12_PAT_R3/PAT_R3-Fase-I-Localizacion-PARADAS-BUS-V19-1.pdf")[autobus de substitució] (sense cost afegit)

#link("https://rodalies.gencat.cat/web/.content/01_Actualitat/2025/06_12_PAT_R3/NOU/Horaris-bus-directe-Vic-a-partir-del-3_11_25.pdf")[Horaris]
]

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
)[
== Incidencies
Hi han
#link("https://rodalies.gencat.cat/ca/detalls/article/01_24_PAT_R3")[afectacions en R3],
i haurem d'agafar un
#link("https://rodalies.gencat.cat/web/.content/02_Horaris/horaris/R3.pdf")[servei alternatiu de autobus]
(temporalment gratuits).
Basicament, anirem amb tren sense tocar el tren.

#link("https://rodalies.gencat.cat/web/.content/01_Actualitat/2026/01_24_PATS/HORARIOS/Horaris-Bus-R3.pdf")[Horaris]
]

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
)[
== Distancia estació tren i estació ski
Caminar $1h$ desde R3 Molina fins l'apartament\
(També existeix #link("https://pirineu365.cat/es/lamolina/estacion/informacion-tecnica/")[autobus] intern la molina 5€ / viatge)
]


#table(
  columns: 4,
  stroke: (x, y) => if y == 0 { (bottom: 0.4pt + black) },
  [*Temps*], [*Direcció*], [*Transport*], [*Requisit*],
  $20min$, [Sants Estació $->$ Fabre i Puig], [L5+L1], [T-Jove],
  $1h$, [Fabre i Puig $->$ Vic], [Bus substitució R3], [T-Jove],
  $3h$, [Vic $->$ Molina], [Pla alternatiu de R3], [Treure ticket en vic?],
  $1h$, [Estació Tren Molina $->$ Apartament], [Peus], [Peus],
)




= Transport - Cotxe (2h)

Si arribem a tenir cotxe, no podrem anar els 6.\
Tot i això, podria ser útil per portar maletes i portar-nos d'estació tren/bus molina <-> apartament.

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
)[
== Recordatori
En cas de ser propens a marejar-se amb cotxe:
1. No menjar avans del viatge.
2. Portar bosa de plastic (sense forats idealment).
]








= Menjar
Responsable: Ax
- *Dinar:* Entrapà / Food trucks / Restaurants / Fast food / None xd
- *Sopar:* Si volem cuinar, podem portar alguna mochila extra amb manjar i/o comprar en alla cosas.
- *Snaks:* Portar de casa

= Apartament Solineu 5 persones (31 Gen - 4 Feb)

#table(
  columns: (1.2fr, 1fr),
  stroke: none,
  [
    #block(
      fill: yellow.lighten(50%),
      inset: 4pt,
      radius: 4pt,
    )[⚠️ 320m de la pista]

    #link("https://www.lamolina.es/apartamentos-solineu/apartamento-para-5-personas-2-habitaciones")[Apartament]\
    Preu total de 4 nits: $1072.35€$

    #table(
      columns: 3,
      fill: (x, y) =>
        if y < 2 { gray.lighten(60%) }
        else if x == 2 { green.lighten(60%) } ,
      table.cell(colspan: 3)[*Preu Per Persona*],
      [*Nits*], [*Persones*], [*Preu*],
      $4$, [Ot, Xf, Ax, Ad, Ur, Xj], $178.73€$,
    )


    #align(bottom, box(inset: (top: -50pt, bottom: -10pt), clip: true)[
      #image("/assets/solineu5_1.jpg")
    ])
    #align(bottom, box(inset: (top: -20pt, bottom: -10pt), clip: true)[
      #image("/assets/solineu5_2.jpg")
    ])
  ],
  [
    #align(bottom, box(inset: (top: -30pt, bottom: -20pt), clip: true)[
      #image("/assets/solineu5_4.jpg")
    ])
    #align(bottom, box(inset: (top: -60pt, bottom: -10pt), clip: true)[
      #image("/assets/solineu5_3.jpg")
    ])
    #align(bottom, box(inset: (top: -30pt, bottom: -20pt), clip: true)[
      #image("/assets/solineu5_5.jpg")
    ])
    #align(bottom, box(inset: (top: -40pt, bottom: -10pt), clip: true)[
      #image("/assets/solineu5_6.jpg")
    ])
  ],
)

= Lloguer Material

#let lloguer = "https://www.esquiadegust.cat/wp-content/uploads/2025/12/TARIFA-PREUS-LLOGUER-2025-26.pdf";

#grid(
  columns: 2,
  gutter: 1em,
  table(
    columns:5,
    fill: (x, y) =>
      if y < 1 { gray.lighten(60%) }
      else if y == 1 and (x == 2 or x == 3) { green.lighten(60%) },

    [*Dies*], [*Equip*], [*Snow-Esquí\ (Oferta Grup?)*], [*Apartament*], [*Snow-Esquí*],
    $5$, [Ski], $90€$, $101.50€$, $105€$,
    $4$, [Ski], $75€$, $85.50€$, $87€$,
    $3$, [Ski], $60€$, $66.50€$, $69€$,
    $3$, [Snow], $71€$, $89.50€$, $93€$,
  ),
  grid()[
    #tiaoma.qrcode(lloguer, width: 5em)
    #link(lloguer)[(pdf snow-esquí)]
  ],
)

= Forfeit

#link("https://pirineu365.cat/es/lamolina/estacion/tarifas")[Tarifes]
(Alp2500 $equiv$ Molina $union$ Masella)

#grid(
  columns: 2,
  gutter: 10pt,
  table(
    columns:4,
    fill: (x, y) => 
      if y < 2 { gray.lighten(60%) }
      else if y == 4 and x < 3 { green.lighten(60%) } ,
    table.cell(colspan: 2)[*Nombre Dies*],
    table.cell(rowspan: 2)[*Preu\ (Oferta apartament)*],
    table.cell(rowspan: 2)[*Preu\ (Sense oferta)*],
    [*Molina*], [*Alp2500*],

    $5$, $0$, $#strfmt("{:.2}", 182.0 + 000.0)€$, $#strfmt("{:.2}", 222.5 + 000.0)€$,
    $4$, $1$, $#strfmt("{:.2}", 145.5 + 051.0)€$, $#strfmt("{:.2}", 178.0 + 055.0)€$,
    $3$, $2$, $#strfmt("{:.2}", 109.0 + 096.0)€$, $#strfmt("{:.2}", 133.5 + 108.0)€$,
    $2$, $3$, $#strfmt("{:.2}", 072.5 + 142.5)€$, $#strfmt("{:.2}", 089.0 + 161.5)€$,
    $1$, $4$, $#strfmt("{:.2}", 040.0 + 189.0)€$, $#strfmt("{:.2}", 047.0 + 215.5)€$,
    $0$, $5$, $#strfmt("{:.2}", 000.0 + 235.5)€$, $#strfmt("{:.2}", 000.0 + 269.5)€$,
  ),
)
