#set page(height: auto)
#show link: set text(fill: blue, weight: 700)
#show link: underline
#import "@preview/tiaoma:0.3.0"
#let qr(url, body) = grid(
  columns: 2,
  gutter: 1em,
  grid()[
    #tiaoma.qrcode(url, width: 5em)
    #link(url)[(pdf complet)]
  ],
  {
    body
  }
)

#set document(
  title: [Opció A | Repetir Molina en 31 Gen - 4 Feb]
)


#title()


= Forfeit

#link("https://pirineu365.cat/es/lamolina/estacion/tarifas")[Tarifes]
Molina & Masella

#table(
  columns:3,
  fill: (x, y) => 
    if y < 2 { gray.lighten(60%) }
    else if y == 4 { green.lighten(60%) } ,
  table.cell(colspan: 2)[*Nombre Dies*],
  table.cell(rowspan: 2)[*Preu*],
  [*Molina*], [*Molina + Masella (Alp2500)*],

  $4$, $0$, $178.00€$,
  $3$, $1$, $188.50€$,
  $2$, $2$, $197.00€$,
  $1$, $3$, $208.00€$,
  $0$, $4$, $215.50€$,
)


= Transport - Tren R3

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


= Transport - Cotxe X?
De anada, com que anem en diferents dies potser hi han posibilitats.\
- *Dissabte* 31 Gen mati: 4 persones / *Diumenge* 1 Feb mati: 4 persones
- Dilluns 2 Feb mati: 2 persones


= Apartamentos Solineu (31 Gen - 4 Feb)

#table(
  columns: (1.2fr, 1fr),
  stroke: none,
  [
    Preu Total de 4 nits: $797€$
    #table(
      columns:3,
      fill: (x, y) => if y < 2 { gray.lighten(60%) },
      table.cell(colspan: 3)[*Preu Per Persona*],
      [*Nits*], [*Persones*], [*Preu*],
      $4$, [Ot, Xf, Ax, Ad], $160€$,
      $2$, [Xj, ?], $80€$,
    )
    ~320m de la pista
    #align(bottom, box(inset: (top: -100pt, bottom: -100pt), clip: true)[
      #image("/assets/solineu_2.jpg")
    ])
  ],
  image("/assets/solineu_1.jpg"),
)

= Residencia Pista Llarga (1 Feb - 4 Feb)

//#columns(2, gutter: 8pt)[
#table(
  columns: (1.2fr, 1fr),
  stroke: none,
  [
    Preu Total de 3 nits: $743€$
    #table(
      columns:3,
      fill: (x, y) => if y < 2 { gray.lighten(60%) },
      table.cell(colspan: 3)[*Preu Per Persona*],
      [*Nits*], [*Persones*], [*Preu*],
      $3$, [Ot, Xf, Ax, Ad], $140€$,
      $2$, [Xj, ?], $94€$,
    )
    ~120m de la pista
    #align(bottom, box(inset: (top: -10pt, bottom: -10pt), clip: true)[
      #image("/assets/pista_llarga_1.jpg")
    ])
  ],
  image("/assets/pista_llarga_2.jpg"),
)


= LLOGUER SNOW-ESQUÍ LA MOLINA

#let lloguer = "https://www.esquiadegust.cat/wp-content/uploads/2025/12/TARIFA-PREUS-LLOGUER-2025-26.pdf";
#qr(lloguer)[
    #table(
      columns:3,
      fill: (x, y) => if y < 1 { gray.lighten(60%) },
      [*Dies*], [*Equip*], [*Preu*],
      $5$, [Ski], $90€$,
      $4$, [Ski], $75€$,
      $3$, [Ski], $60€$,
      $3$, [Snow], $71€$,
    )
]

= Menjar
- *Dinar:* Entrapà / Food trucks / Restaurants / Fast food / None xd
- *Sopar:* Si volem cuinar, podem portar alguna mochila extra amb manjar i/o comprar en alla cosas.
- *Snaks:* Portar de casa

