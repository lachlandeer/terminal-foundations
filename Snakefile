# Workflow for "Introduction to Terminal"
#
# Module Maintainer: Adrian Etter (@eydrian)
# Helpers: Lachlan Deer (@lachlandeer)

# --- Sub Workflows --- #
subworkflow slides:
   workdir:   "slides/"
   snakefile: "slides/Snakefile"

# --- Build Rules --- #

rule all:
    input:
        pdfs = slides("../slides/out/intro-terminal.pdf")
    output:
        slides = "intro-terminal.pdf"
    shell:
        "mv slides/out/*.pdf ."
