######################################
# General informations
######################################

info["avatar"] = "pic.jpg"
# info["cv"] = "cv.pdf"
info["lang"] = "en"
info["name"] = "Alexis Lebis"
info["title"] = "A. Lebis"
info["email"] = "contact@alexis.lebis.org"

## Social Networks (comment/delete lines to unwanted social network, input your personal info for the others)
# info["researchgate"] = "https://www.researchgate.net/profile/Jean_Francois_Baffier"
info["googlescholar"] = "https://scholar.google.com/citations?user=zU0Z1sMAAAAJ"
info["orcid"] = "https://orcid.org/0000-0003-2104-8671"
# info["dblp"] = "https://dblp.org/pid/139/8142"
# info["linkedin"] = "https://www.linkedin.com/in/jeanfrancoisbaffier/"
info["github"] = "https://github.com/alexislebis"
# info["gitlab"] = "https://gvipers.imt-lille-douai.fr/alexis.lebis"

######################################
# Contributors user name => real name
######################################
user_to_name["alexislebis"] = "Alexis Lebis"
user_to_name["lozenguez"] = "Guillaume Lozenguez"
user_to_name["thieu4122"] = "Mathieu Vermeulen"
user_to_name["lucfabresse"] = "Luc Fabresse"
# user_to_name["matiaskorman"] = "Matias Korman"

######################################
# index.html
# biography
# academic positions
# education and training
# honors, awards, and grants
######################################

work_cards = Deck(
    Card(
        "2020",
        "current",
        "Associate Profressor",
        "IMT Lille Douai, France"
    ),
    Card(
        "2019",
        "2020",
        "Postdoctoral Researcher",
        "IMT Lille Douai, France"
        ),
)

education_cards = Deck(
    Card(
        "Ph.D.",
        "2019",
        "Ph.D. in Computer Science",
        "Sorbonne Université, France"
    ),
    Card(
        "M.Sc.",
        "2015",
        "Master of Science: Aritificial Intelligence and Decision",
        "Université Claude Bernard Lyon 1, France"
    ),
    Card(
        "B.Sc.",
        "2007",
        "Bachelor of Computer Science",
        "Université de La Rochelle, France"
    ),
)

projects = TimeLine(
    Dot(
        "2018-2021",
        "APACHES (FIPE18-007-VERMEULEN)",
        "Co-responsible of the APACHES project, which aims to change pedagogical methods in human-centered project-based pedagogy and assists teachers and students.",
    ),

    # Dot(
    #     "2012-2015",
    #     "MEXT Scholarship",
    #     "The Monbukagakusho Scholarship is an academic scholarship offered by the Japanese Ministry of Education, Culture, Sports, Science and Technology (MEXT)."
    # )
)

biography = Block(
    paragraphs(
    """
    I am an associate professor in artificial intelligence at the Center for Digital Systems (CERI SN) of $(link("Institut Mines Télécom Lille Douai", "https://imt-lille-douai.fr/")), in France, since 2020. Before that, I was a post-doctorate for the $(link("APACHES", "https://apaches.wp.imt.fr/")) project.
    """,
    """
    My research is mainly focused on Decision Making (DM) and Knowledge Engineering (KE), especially applied to Technology Enhanced Learning (T.E.L) for now. I am interested in providing educational stakeholders with new decision-making tools for complex pedagogical situations, adapted to the always changing education context. As such, I work particularly on modeling complex (and combinatorial) TEL problems, understanding their topology and solving them by using different approaches, such as constraint-based meta-heuristic.
    """,
    """
    I am also very interested in reproducible science, and how we can foster it in T.EL., and more generaly in computer science fields. My $(link("PhD thesis", "https://tel.archives-ouvertes.fr/tel-02164400")) laid mostly into this problematic, heavily relying on KE and web semantics. An so, to continue on this reproducibility concerns, I became an ambassador of the foundation $(link("Software Heritage", "https://archive.softwareheritage.org/")).
    """,
    """
    I also have an interest in various little funny things, like games, game AI problems, hiking, kendo, science popularization, climbing, trees, music, teaching...
    """
    ),
    images(
        Image("NAP_ontology_resized.png", "An exemple of an ontology (used to model a narrated analysis process in TEL)"),
        Image("ambassador_badge_15.03_V1-1.png", "Software Heritage Ambassador")
    )
)

page(
    title="index",
    sections=[
        Section(
            title="Biography",
            items=biography
        ),
        Double(
            Section(
                title="Positions",
                items=work_cards
            ),
            Section(
                title="Education",
                items=education_cards
            )
        ),
        Section(
            title="Projects",
            items=projects
        )
    ]
)

######################################
# publications.html
#   option 1: background for the page is set to start with white to emphasize the items
######################################
page(
    title="publications",
    background=bg_white,
    sections=[
        Section(
            title="Publications",
            items=Publications("publications.bib")
        )
    ]
)

######################################
# research.html
#   items: topics, interdiction, structure, modernac, explainable (all Blocks)
######################################
topics = Block(
    paragraphs(
        """
        Principal Research Projects: Network Interdiction, Compressed Data Sructures, Modern Academics, Explainable AI. Other research interest includes Graph Theory, Geometry, Optimization, and Games.
        """,
        """
        All of this research is supported by Open-Source Softwares and published as peer-review academic papers. 
        """
    ),
    images()
)

interdiction = Block(
    paragraphs(
        """
        A situation when a network flow is attacked can be modeled by a game between two players: an attacker who wants to remove a set of links that minimizes the flow value and a defender that wants to maximize the flow value. When the attacker (resp. defender) plays first, the problem is called network interdiction (resp. network adaptive flow). Most of those interdiction problems are intractable.
        """,
        """
        We provide a general framework to solve or approximate interdiction problems in polynomial time, along with Bilevel Mixed-Integer Programs with high accuracy to improve the approximated instances. 
        """
    ),
    images(
        Image("bmilp.png", "Bilevel Mix-Integer Programming")
    )
)

structure = Block(
    paragraphs(
        """
        External data compression is a compression technique where the explicit data is stored as an external source such as hard-disks, streams, or any combination of distributed devices. The local device stores, in memory or cache, a small amount of explicit data that are the most likely to be used in the future. It also stores information required to stream (by small chunks) the rest of the data from the external source. This last process is called reconstruction.
        """,
        """
        We use time-space trade-off techniques to execute stack algorithms with external compression in a fashion that provides a linearly longer execution time linear compared to classical stacks while reducing the space used from several order of magnitude.
        """,
        """
        Current work extends this technique to other type of containers while trying to reduce/erase the reconstruction time. All our algorithms are black-boxes, that is the user only selects a compression rate compared to the original algorithms.
        """
    ),
    images(
        Image("cs.png", "Compressed Stack")
    )
)

modernac = Block(
    paragraphs(
        """
        context
        """,
        """
        resutls
        """
    ),
    images(
        Image("knowledge.png", "Flow of Knowledge")
    )
)

KE = Block(
    paragraphs(
        """
        context
        """,
        """
        resutls
        """
    ),
    images(
        Image("NAP_ontology.png", "An exemple of an ontology (used to model a narrated analysis process in TEL)")
    )
)

page(
    title="research",
    sections=[
        Section(
            title="Research topics",
            items=topics
        ),
        Section(
            title="Technology Enhanced Learning",
            items=interdiction
        ),
        Section(
            title="Learning Analytics",
            items=structure
        ),
        Section(
            title="Decision Making",
            items=modernac
        ),
        Section(
            title="Knowledge Engineering",
            items=KE
        ),

    ]
)

######################################
# software.html: github (GitRepo)
#   option 1: Section is hidden (to avoid pulling info from GitHub at each run)
#   option 2: background for the page is set to start with white to emphasize the items
######################################
github = GitRepo(
    "alexislebis/CAPTEN",
    "alexislebis/CAPTEN-Ontology"
)

gitlabS = Deck(
        Card(
        "",
        "",
        "<a href=\"https://gvipers.imt-lille-douai.fr/m3tal/apaches.prolog_csdvp\">APACHES.Prolog_CSDVP</a>",
        "Prolog constraint satisfaction decaying variables problem (CSDVP) implementation"
        ),
    )

page(
    title="software",
    background=bg_white,
    sections=[
        Section(
            title="Software",
            hide=false,
            #items=github,
        ),
        Section(
            title="GitHub",
            hide=false,
            items=github,
        ),
        Section(
            title="GitLab",
            hide=false,
            items=gitlabS,
        ),
    ]
)

######################################
# teaching.html: github (GitRepo) + timeline
#   option 1: Section is hidden (to avoid pulling info from GitHub at each run)
#   option 2: background for the page is set to start with white to emphasize the items
######################################
githubT = GitRepo(
    "ceri-num/uv-cdpia",
    "ceri-num/fa-projinfo",
    "ceri-num/uv-cdaw"
)

teachingIMT = TimeLine(
    Dot(
        "2020-2021",
        "",
        "<ul><li><em>Project manager in artificial intelligence training</em> | Lecture and exercice class for professional</li>
            <li><em>Design and Development of Web Applications - Client Side</em> | Lecture and exercice class for graduate students</li>
            <li><em>Algorithm and programming</em> | Tutorial and exercice class for undergraduate students</li>
            <li><em>Database management system</em> | Tutorial and exercice class for undergraduate students</li>
            <li><em>Strategy for solving complex problems through games</em> | Lecture class for undergraduate students</li>
            <li><em>Harmonisation in Computer Science</em> | Lecture and exercice class for undergraduate students</li>
        </ul>",
    ),
    Dot(
        "2019-2020",
        "",
        "<ul><li><em>Database management system</em> | Tutorial and exercice class for undergraduate students</li>
        </ul>"
    )
)

teachingUCBL = TimeLine(
    Dot(
        "2018-2019",
        "",
        "<ul><li><em>Foundation of artificial intelligence</em> | Tutorial and exercice class for graduate students</li>
        <li><em>Algorithms and Object Oriented Programming</em> | Tutorial and exercice class for undergraduate students</li>
        <li><em>Algorithmics and imperative programming</em> | Tutorial and exercice class for undergraduate students</li>
        </ul>",
    ),
    Dot(
        "2017-2018",
        "",
        "<ul><li><em>Algorithms and functional and recursive Programming</em> | Tutorial and exercice class for undergraduate students</li>
        <li><em>Algorithms and Object Oriented Programming</em> | Tutorial and exercice class for undergraduate students</li>
        <li><em>Algorithmics and imperative programming</em> | Tutorial and exercice class for undergraduate students</li>
        </ul>",
    ),
    Dot(
        "2016-2017",
        "",
        "<ul><li><em>Foundation of artificial intelligence</em> | Tutorial and exercice class for graduate students</li>
        <li><em>Algorithms and functional and recursive Programming</em> | Tutorial and exercice class for undergraduate students</li>
        <li><em>Algorithms and Object Oriented Programming</em> | Tutorial and exercice class for undergraduate students</li>
        <li><em>Logic programming</em> | Tutorial and exercice class for undergraduate students</li>
        </ul>",
    ),
    Dot(
        "2015-2016",
        "",
        "<ul><li><em>Algorithms and functional and recursive Programming</em> | Tutorial and exercice class for undergraduate students</li>
        <li><em>Algorithms and Object Oriented Programming</em> | Tutorial and exercice class for undergraduate students</li>
        <li><em>Logic programming</em> | Tutorial and exercice class for undergraduate students</li>
        </ul>",
    ),
)

page(
    title="teaching",
    background=bg_white,
    sections=[
        Section(
            title="Teaching",
            hide=false,
            #items=(),
        ),
        Double(
            Section(
                title="IMT Lille Douai",
                hide=false,
                items=teachingIMT,
            ),
            Section(
                title="Université Claude Bernard Lyon 1",
                hide=false,
                items=teachingUCBL,
            ),  
        ),
        Section(
            title="Teaching Ressources",
            hide=false,
            items=githubT,
        ),
    ]
)

######################################
# End of the entries
######################################