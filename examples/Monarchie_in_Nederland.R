#!/usr/bin/env Rscript
# Your code starts here
if (!require("DiagrammeR"))
  install.packages("DiagrammeR")
if (!require("DiagrammeRsvg"))
  install.packages("DiagrammeRsvg")
library(tidyverse)
library(DiagrammeR)
library(DiagrammeRsvg)

"graph Monarchie_in_Nederland {rankdir=TB;
          subgraph cluster1 {
              node [shape = box, fontname = Helvetica]
    'Carlo Maria Buonaparte' ; 'Maria Laetitia Ramolino' ;
    'Lodewijk I' ; 'Hortense de Beauharnais';
    'Lodewijk II' ; 'Charlotte Bonaparte' ;
    
# Monarchen
   'Lodewijk I' [shape = box, fontname = Helvetica, style = filled, fillcolor = DeepSkyBlue]
   'Lodewijk II' [shape = box, fontname = Helvetica, style = filled, fillcolor = DeepSkyBlue]

  # node as circle
  node [shape = circle, fixedsize = true, width = 0.1, fontcolor = white,  fontsize = 1] // sets as circles
  11; 12; 13

  # edges
   'Carlo Maria Buonaparte' -- 13  ; 'Maria Laetitia Ramolino' -- 13; 13 --  'Lodewijk I'
   'Lodewijk I'	-- 12     ; 'Hortense de Beauharnais' -- 12    ; 12 -- 'Lodewijk II' ;
   'Lodewijk II' -- 11    ; 'Charlotte Bonaparte' -- 11 ;
  }
          subgraph cluster2 {
node [shape = box, fontname = Helvetica]
    'Willem V van Oranje-Nassau' ; 'Wilhelmina van Pruisen (1751-1820)';
    'Willem I' ; 'Wilhelmina van Pruisen (1774-1837)';
    'Willem II'; 'Anna Paulowna van Rusland';
    'Willem III'; 'Emma van Waldeck-Pyrmont';
    Wilhelmina; 'Hendrik van Mecklenburg-Schwerin';
    Juliana	; 'Bernhard van Lippe-Biesterfeld';
    Beatrix; 'Claus van Amsberg';
    'Máxima Zorreguieta'; 'Willem-Alexander';
    'Catharina-Amalia';

# Monarchen
  'Willem I' [shape = box, fontname = Helvetica, style = filled, fillcolor = orange]
  'Willem II' [shape = box, fontname = Helvetica, style = filled, fillcolor = orange]
  'Willem III' [shape = box, fontname = Helvetica, style = filled, fillcolor = orange]
  'Wilhelmina' [shape = box, fontname = Helvetica, style = filled, fillcolor = orange]
  Juliana [shape = box, fontname = Helvetica, style = filled, fillcolor = orange]
  Beatrix [shape = box, fontname = Helvetica, style = filled, fillcolor = orange]
  'Willem-Alexander' [shape = box, fontname = Helvetica, style = filled, fillcolor = orange]
  'Catharina-Amalia' [shape = box, fontname = Helvetica, fontcolor = orange]

  # node as circle
  node [shape = circle, fixedsize = true, width = 0.1, fontcolor = white,  fontsize = 1] // sets as circles
  1; 2; 3; 4; 5; 6

  # edges
  'Willem V van Oranje-Nassau' -- 8 ; 'Wilhelmina van Pruisen (1751-1820)' -- 8 ; 8 -- 'Willem I'
  'Willem I' -- 7  ; 'Wilhelmina van Pruisen (1774-1837)' -- 7 ; 7 -- 'Willem II';
  'Willem II' -- 6 ; 'Anna Paulowna van Rusland'          -- 6 ; 6 -- 'Willem III';
  'Emma van Waldeck-Pyrmont' -- 5    ; 'Willem III' -- 5 ;  5 -- Wilhelmina
  Wilhelmina -- 4  ; 'Hendrik van Mecklenburg-Schwerin' -- 4 ; 4 -- Juliana
  Juliana	-- 3     ; 'Bernhard van Lippe-Biesterfeld' -- 3 ; 3 -- Beatrix;
  Beatrix	-- 2     ; 'Claus van Amsberg' -- 2    ; 2 -- 'Willem-Alexander' ;
  'Máxima Zorreguieta' -- 1      ; 'Willem-Alexander' -- 1 ; 1 -- 'Catharina-Amalia';
  }

    }" %>%
  grViz() %>%
  export_svg() %>%
  writeLines(commandArgs(trailingOnly = TRUE)[1])
