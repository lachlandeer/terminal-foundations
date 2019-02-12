# Workflow for "Introduction to Terminal"
#
# Module Maintainer: Adrian Etter (@eydrian)
# Helpers: Lachlan Deer (@lachlandeer)

# --- Sub Workflows --- #
subworkflow slides:
   workdir:   "slides/"
   snakefile: "slides/Snakefile"

# --- Variable Declarations --- #
OUTPUT = "out/terminal.pdf"


# --- Build Rules --- #

rule all:
    input:
        pdfs = slides("../slides/" + OUTPUT)
    output:
        slides = "terminal.pdf"
    shell:
        "mv slides/out/*.pdf ."
