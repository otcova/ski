#import "@preview/tiaoma:0.3.0"
#import "@preview/oxifmt:0.2.1": strfmt

#set page(height: auto)
#show link: set text(fill: blue, weight: 700)
#show link: underline
#set document(title: [Molina 31 Gen - 4 Feb])

#title()

== Forfeit

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

== Transport - Tren R3 (\~4h)

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
)[
=== 1. Obres
Hi han
#link("https://rodalies.gencat.cat/ca/detalls/article/06_12_PAT_R3")[obres en R3],
i haurem d'agafar un
#link("https://rodalies.gencat.cat/web/.content/01_Actualitat/2025/06_12_PAT_R3/PAT_R3-Fase-I-Localizacion-PARADAS-BUS-V19-1.pdf")[autobus de substitució] (sense cost afegit)
]

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
)[
=== 2. Distancia estació tren i estació ski
1. Caminar 1hr desde R3 Molina fins l'apartament
2. #link("https://pirineu365.cat/es/lamolina/estacion/informacion-tecnica/")[Autobus] intern la molina (5€ / viatge)
]

#link("https://rodalies.gencat.cat/web/.content/02_Horaris/horaris/R3.pdf")[Horari R3]

// #show table.cell.where(y: 0): strong
#table(
  columns: 4,
  stroke: (x, y) => if y == 0 { (bottom: 0.7pt + black) },
  [*Temps*], [*Direcció*], [*Transport*], [*Requisit*],
  $20min$, [Sants Estació $->$ Fabre i Puig], [R4], [T-Jove],
  $60min$, [Fabre i Puig $->$ Vic], [Bus substitució R3], [T-Jove],
  $80min$, [Vic $->$ Molina], [R3], [T-Jove + Extra],
  $60min$, [Estació Tren Molina $->$ Apartament], [Peus], [Peus],
)


== Transport - Cotxe (2h)

Possibilitats que dependran de la disponibilitat de cotxe:
1. Anar/Tornar amb cotxe (Xf condueix), pare torna el cotxe el mateix dia.
2. Obtenim cotxe per els 5 dies. Xf condueix anada i tornada

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
)[
=== Recordatori
En cas de ser propens a marejar-se amb cotxe:
1. No menjar avans del viatge.
2. Portar bosa de plastic (sense forats idealment).
]


== Apartament Solineu 5 persones (31 Gen - 4 Feb)

#table(
  columns: (1.2fr, 1fr),
  stroke: none,
  [
    #block(
      fill: yellow.lighten(50%),
      inset: 4pt,
      radius: 4pt,
    )[⚠️ 320m de la pista]

    #link("https://www.lamolina.es/apartamentos-solineu/apartamento-para-5-personas-2-habitaciones")[Preu]
    total de 4 nits: $1072.35€$

    #table(
      columns: 3,
      fill: (x, y) =>
        if y < 2 { gray.lighten(60%) }
        else if x == 2 { green.lighten(60%) } ,
      table.cell(colspan: 3)[*Preu Per Persona*],
      [*Nits*], [*Persones*], [*Preu*],
      $4$, [Ot, Xf, Ax, Ad], $268.09€$,
    )


    #align(bottom, box(inset: (top: -100pt, bottom: -100pt), clip: true)[
      #image("/assets/solineu_2.jpg")
    ])
  ],
  image("/assets/solineu_1.jpg"),
)

== Lloguer Material

#let lloguer = "https://www.esquiadegust.cat/wp-content/uploads/2025/12/TARIFA-PREUS-LLOGUER-2025-26.pdf";

#grid(
  columns: 2,
  gutter: 1em,
  table(
    columns:5,
    fill: (x, y) =>
      if y < 1 { gray.lighten(60%) }
      else if y == 1 and x == 2 { green.lighten(60%) },

    [*Dies*], [*Equip*], [*Snow-Esquí\ (Oferta Grup)*], [*Apartament*], [*Snow-Esquí*],
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

== Menjar
- *Dinar:* Entrapà / Food trucks / Restaurants / Fast food / None xd
- *Sopar:* Si volem cuinar, podem portar alguna mochila extra amb manjar i/o comprar en alla cosas.
- *Snaks:* Portar de casa


#pagebreak()

= Alternatives

== Forfeit

#link("https://pirineu365.cat/es/lamolina/estacion/tarifas")[Tarifes]
(Alp2500 $equiv$ Molina $union$ Masella)

#grid(
  columns: 2,
  gutter: 1em,
  table(
    columns:3,
    fill: (x, y) => if y < 2 { gray.lighten(60%) },
    table.cell(colspan: 2)[*Nombre Dies*],
    table.cell(rowspan: 2)[*Preu*],
    [*Molina*], [*Alp2500*],

    $5$, $0$, $#strfmt("{:.2}", 222.5 + 000.0)€$,
    $4$, $1$, $#strfmt("{:.2}", 178.0 + 055.0)€$,
    $3$, $2$, $#strfmt("{:.2}", 133.5 + 108.0)€$,
    $2$, $3$, $#strfmt("{:.2}", 089.0 + 161.5)€$,
    $1$, $4$, $#strfmt("{:.2}", 047.0 + 215.5)€$,
    $0$, $5$, $#strfmt("{:.2}", 000.0 + 269.5)€$,
  ),

  table(
    columns:3,
    fill: (x, y) => if y < 2 { gray.lighten(60%) },
    table.cell(colspan: 2)[*Nombre Dies*],
    table.cell(rowspan: 2)[*Preu*],
    [*Molina*], [*Alp2500*],

    $4$, $0$, $178.00€$,
    $3$, $1$, $188.50€$,
    $2$, $2$, $197.00€$,
    $1$, $3$, $208.00€$,
    $0$, $4$, $215.50€$,
  ),

)

== Residencia Pista Llarga (només 1 Feb - 4 Feb)

//#columns(2, gutter: 8pt)[
#table(
  columns: (1.2fr, 1fr),
  stroke: none,
  [
    120m de la pista

    Preu Total de 3 nits: $743€$
    #table(
      columns:3,
      fill: (x, y) => if y < 2 { gray.lighten(60%) },
      table.cell(colspan: 3)[*Preu Per Persona*],
      [*Nits*], [*Persones*], [*Preu*],
      $3$, [Ot, Xf, Ax, Ad], $140€$,
      $2$, [Xj, ?], $94€$,
    )
    #align(bottom, box(inset: (top: -10pt, bottom: -10pt), clip: true)[
      #image("/assets/pista_llarga_1.jpg")
    ])
  ],
  image("/assets/pista_llarga_2.jpg"),
)

== Apartamentos Solineu 4 persones (31 Gen - 4 Feb)

#block(
  fill: red.lighten(50%),
  inset: 4pt,
  radius: 4pt,
)[⚠️ L'apartament de 4 personas ja no esta disponible per els 5 dies]

#table(
  columns: (1.2fr, 1fr),
  stroke: none,
  [
    #block(
      fill: yellow.lighten(50%),
      inset: 4pt,
      radius: 4pt,
    )[⚠️ 320m de la pista]

    Preu Total de 4 nits: $797€$

    #table(
      columns: 4,
      fill: (x, y) =>
        if y < 2 { gray.lighten(60%) }
        else if x == 3 { green.lighten(60%) } ,
      table.cell(colspan: 4)[*Preu Per Persona*],
      [*Nits*], [*Persones*], table.cell(colspan: 2)[*Preu*],
      $4$, [Ot, Xf, Ax, Ad], $160€$, $200€$,
      $2$, [Xj, ?], $80€$, $-$,
    )


    #align(bottom, box(inset: (top: -100pt, bottom: -100pt), clip: true)[
      #image("/assets/solineu_2.jpg")
    ])
  ],
  image("/assets/solineu_1.jpg"),
)
