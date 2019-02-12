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
TEACHING_HOME   = "/home/lachlan/teaching/pp4rs/2019"
COURSE_HOME     = "2019-foundations-uzh"
COURSE_MATERIAL = "2019-foundations-uzh-material"

# --- Build Rules --- #

rule all:
    input:
        pdfs = slides("../slides/" + OUTPUT)
    output:
        slides = "terminal.pdf"
    shell:
        "mv slides/out/*.pdf ."

rule copy2students:
    input:
        script = "move_material.sh",
        pdf = "terminal.pdf",
        readme = "README.md",
        zip = "assets/data-shell.zip"
    params:
        teaching_home = TEACHING_HOME,
        course_material = COURSE_MATERIAL,
        material_path = "02-terminal",
        git_push = "true"
    output:
        pdf = TEACHING_HOME + "/" + COURSE_MATERIAL + "/02-terminal/terminal.pdf",
        readme = TEACHING_HOME + "/" + COURSE_MATERIAL + "/02-terminal/README.md",
        zip = TEACHING_HOME + "/" + COURSE_MATERIAL + "/02-terminal/data-shell.zip",
    log:
        "logs/move_material.txt"
    shell:
        "bash move_material.sh {input.pdf} \
            {input.readme} \
            {input.zip} \
            {params.teaching_home} \
            {params.course_material} \
            {params.material_path} \
            {params.git_push}> {log}"
