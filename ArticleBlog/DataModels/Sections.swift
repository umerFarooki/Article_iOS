//
//  Sections.swift
//  ArticleBlog
//
//  Created by Umer Farooq on 3/1/21.
//  Copyright © 2021 Umer Farooq. All rights reserved.
//

import Foundation

struct SectionsDataResponseModel: Decodable {
    
    var status: String?
    var copyright: String?
    var numResults: Int?
    var results: [SectionDataResponseModel]?
    
    private enum CodingKeys: String, CodingKey {
        case status       = "status"
        case copyright    = "copyright"
        case numResults   = "num_results"
        case results      = "results"
    }
    
    // use the below standard during debug
    static let sample = """
    {
        "status": "OK",
        "copyright": "Copyright (c) 2021 The New York Times Company.  All Rights Reserved.",
        "num_results": 20,
        "results": [
            {
                "uri": "nyt://article/1e2d6fdc-8632-59aa-a111-56efcee19e20",
                "url": "https://www.nytimes.com/2021/02/20/us/texas-storm-electric-bills.html",
                "id": 100000007615891,
                "asset_id": 100000007615891,
                "source": "New York Times",
                "published_date": "2021-02-20",
                "updated": "2021-02-22 08:43:38",
                "section": "U.S.",
                "subsection": "",
                "nytdsection": "u.s.",
                "adx_keywords": "Power Failures and Blackouts;Electric Light and Power;Prices (Fares, Fees and Rates);Heating;Natural Gas;Abbott, Gregory W (1957- );Texas",
                "column": null,
                "byline": "By Giulia McDonnell Nieto del Rio, Nicholas Bogel-Burroughs and Ivan Penn",
                "type": "Article",
                "title": "His Lights Stayed on During Texas’ Storm. Now He Owes $16,752.",
                "abstract": "After a public outcry from people like Scott Willoughby, whose exorbitant electric bill is soon due, Gov. Greg Abbott said lawmakers should ensure Texans “do not get stuck with skyrocketing energy bills” caused by the storm.",
                "des_facet": [
                    "Power Failures and Blackouts",
                    "Electric Light and Power",
                    "Prices (Fares, Fees and Rates)",
                    "Heating",
                    "Natural Gas"
                ],
                "org_facet": [],
                "per_facet": [
                    "Abbott, Gregory W (1957- )"
                ],
                "geo_facet": [
                    "Texas"
                ],
                "media": [],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/859e4ab9-4590-5b8f-a528-82c07b061954",
                "url": "https://www.nytimes.com/2021/02/24/opinion/covid-icu-nurses-arizona.html",
                "id": 100000007607062,
                "asset_id": 100000007607062,
                "source": "New York Times",
                "published_date": "2021-02-24",
                "updated": "2021-02-25 09:16:27",
                "section": "Opinion",
                "subsection": "",
                "nytdsection": "opinion",
                "adx_keywords": "Coronavirus (2019-nCoV);Deaths (Fatalities);Nursing and Nurses;Hospitals;Phoenix (Ariz);United States",
                "column": null,
                "byline": "",
                "type": "Article",
                "title": "Death, Through a Nurse’s Eyes",
                "abstract": "A short film offering a firsthand perspective of the brutality of the pandemic inside a Covid-19 I.C.U.",
                "des_facet": [
                    "Coronavirus (2019-nCoV)",
                    "Deaths (Fatalities)",
                    "Nursing and Nurses",
                    "Hospitals"
                ],
                "org_facet": [],
                "per_facet": [],
                "geo_facet": [
                    "Phoenix (Ariz)",
                    "United States"
                ],
                "media": [],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/3f423cee-742b-59a2-9412-6b82e88266ca",
                "url": "https://www.nytimes.com/2021/02/24/us/smith-college-race.html",
                "id": 100000007612265,
                "asset_id": 100000007612265,
                "source": "New York Times",
                "published_date": "2021-02-24",
                "updated": "2021-02-25 09:33:01",
                "section": "U.S.",
                "subsection": "",
                "nytdsection": "u.s.",
                "adx_keywords": "Colleges and Universities;Discrimination;Race and Ethnicity;Black People;Whites;Workplace Hazards and Violations;Kanoute, Oumou;McCartney, Kathleen;Smith College",
                "column": null,
                "byline": "By Michael Powell",
                "type": "Article",
                "title": "Inside a Battle Over Race, Class and Power at Smith College",
                "abstract": "A student said she was racially profiled while eating in a college dorm. An investigation found no evidence of bias. But the incident will not fade away.",
                "des_facet": [
                    "Colleges and Universities",
                    "Discrimination",
                    "Race and Ethnicity",
                    "Black People",
                    "Whites",
                    "Workplace Hazards and Violations"
                ],
                "org_facet": [
                    "Smith College"
                ],
                "per_facet": [
                    "Kanoute, Oumou",
                    "McCartney, Kathleen"
                ],
                "geo_facet": [],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "Smith College is an elite 145-year-old liberal arts college, where tuition, room and board top $78,000 a year and where the employees who keep the school running often come from working-class neighborhoods.",
                        "copyright": "Christopher Capozziello for The New York Times",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/24/us/24SmithCollege1/24SmithCollege1-thumbStandard-v2.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/24/us/24SmithCollege1/24SmithCollege1-mediumThreeByTwo210-v2.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/24/us/24SmithCollege1/24SmithCollege1-mediumThreeByTwo440-v2.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/9b8f5d2f-1e64-5759-81bb-1af8fd16a496",
                "url": "https://www.nytimes.com/2021/02/23/opinion/britney-spears-mara-wilson-hollywood.html",
                "id": 100000007612599,
                "asset_id": 100000007612599,
                "source": "New York Times",
                "published_date": "2021-02-23",
                "updated": "2021-02-25 23:24:34",
                "section": "Opinion",
                "subsection": "",
                "nytdsection": "opinion",
                "adx_keywords": "Actors and Actresses;Women and Girls;Children and Childhood;Celebrities;Movies;Spears, Britney;Wilson, Mara (1987- )",
                "column": null,
                "byline": "By Mara Wilson",
                "type": "Article",
                "title": "The Lies Hollywood Tells About Little Girls",
                "abstract": "Britney Spears and I learned the same lesson growing up: When you’re young and famous, there is no such thing as control.",
                "des_facet": [
                    "Actors and Actresses",
                    "Women and Girls",
                    "Children and Childhood",
                    "Celebrities",
                    "Movies"
                ],
                "org_facet": [],
                "per_facet": [
                    "Spears, Britney",
                    "Wilson, Mara (1987- )"
                ],
                "geo_facet": [],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "The author in the 1993 film &ldquo;Mrs. Doubtfire.&rdquo;",
                        "copyright": "20th Century Fox, via Everett Collection",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/opinion/23Wilson-2/23Wilson-2-thumbStandard-v2.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/opinion/23Wilson-2/23Wilson-2-mediumThreeByTwo210-v2.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/opinion/23Wilson-2/23Wilson-2-mediumThreeByTwo440-v2.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/91b99198-387e-584e-be77-b6664e6e1a8b",
                "url": "https://www.nytimes.com/2021/02/24/health/coronavirus-variant-nyc.html",
                "id": 100000007622108,
                "asset_id": 100000007622108,
                "source": "New York Times",
                "published_date": "2021-02-24",
                "updated": "2021-02-25 19:12:34",
                "section": "Health",
                "subsection": "",
                "nytdsection": "health",
                "adx_keywords": "Disease Rates;Vaccination and Immunization;Coronavirus (2019-nCoV);your-feed-science;New York Metropolitan Area;New York City",
                "column": null,
                "byline": "By Apoorva Mandavilli",
                "type": "Article",
                "title": "A New Coronavirus Variant Is Spreading in New York, Researchers Report",
                "abstract": "The variant contains a mutation thought to help the virus dodge the immune system, scientists said.",
                "des_facet": [
                    "Disease Rates",
                    "Vaccination and Immunization",
                    "Coronavirus (2019-nCoV)",
                    "your-feed-science"
                ],
                "org_facet": [],
                "per_facet": [],
                "geo_facet": [
                    "New York Metropolitan Area",
                    "New York City"
                ],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "People lined up outside Medgar Evers College in Brooklyn for vaccines and vaccination appointments on Wednesday.",
                        "copyright": "James Estrin/The New York Times",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/24/science/24VIRUS-NYCVARIANT1/24VIRUS-NYCVARIANT1-thumbStandard.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/24/science/24VIRUS-NYCVARIANT1/24VIRUS-NYCVARIANT1-mediumThreeByTwo210.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/24/science/24VIRUS-NYCVARIANT1/24VIRUS-NYCVARIANT1-mediumThreeByTwo440.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/e8e9c34b-4c8e-59c3-9a93-42fb0d59f05d",
                "url": "https://www.nytimes.com/2021/02/26/us/politics/minimum-wage-stimulus-democrats.html",
                "id": 100000007625974,
                "asset_id": 100000007625974,
                "source": "New York Times",
                "published_date": "2021-02-26",
                "updated": "2021-02-28 16:15:07",
                "section": "U.S.",
                "subsection": "Politics",
                "nytdsection": "u.s.",
                "adx_keywords": "Stimulus (Economic);Coronavirus (2019-nCoV);Minimum Wage;United States Economy;Federal Budget (US);United States Politics and Government;Biden, Joseph R Jr;Pelosi, Nancy;House of Representatives;Democratic Party;Republican Party;Senate",
                "column": null,
                "byline": "By Emily Cochrane and Jim Tankersley",
                "type": "Article",
                "title": "House Passes $1.9 Trillion Stimulus as Democrats Work to Salvage Wage Raise",
                "abstract": "Even as the House passed President Biden’s pandemic aid plan with a minimum wage increase included, Democrats were searching for a Plan B for the wage hike, which was ruled out in the Senate.",
                "des_facet": [
                    "Stimulus (Economic)",
                    "Coronavirus (2019-nCoV)",
                    "Minimum Wage",
                    "United States Economy",
                    "Federal Budget (US)",
                    "United States Politics and Government"
                ],
                "org_facet": [
                    "House of Representatives",
                    "Democratic Party",
                    "Republican Party",
                    "Senate"
                ],
                "per_facet": [
                    "Biden, Joseph R Jr",
                    "Pelosi, Nancy"
                ],
                "geo_facet": [],
                "media": [],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/43261188-d929-53cb-829f-eab44f13f146",
                "url": "https://www.nytimes.com/2021/02/19/dining/perfect-scrambled-eggs.html",
                "id": 100000007609886,
                "asset_id": 100000007609886,
                "source": "New York Times",
                "published_date": "2021-02-19",
                "updated": "2021-02-24 01:05:50",
                "section": "Food",
                "subsection": "",
                "nytdsection": "food",
                "adx_keywords": "Eggs;Cooking and Cookbooks;Content Type: Service;Recipes",
                "column": null,
                "byline": "By J. Kenji López-Alt",
                "type": "Article",
                "title": "This Is How You Get the Best Scrambled Eggs",
                "abstract": "J. Kenji López-Alt wants perfect weekday eggs without the fuss. For that, he employs this brilliant technique.",
                "des_facet": [
                    "Eggs",
                    "Cooking and Cookbooks",
                    "Content Type: Service",
                    "Recipes"
                ],
                "org_facet": [],
                "per_facet": [],
                "geo_facet": [],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "You can leave these eggs on the stovetop for an extra 30 seconds, and they still won’t turn tough or dry the way scrambled eggs typically do.",
                        "copyright": "Linda Xiao for The New York Times. Food Stylist: Monica Pierini.",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/24/dining/19Kenji1/19Kenji1-thumbStandard-v2.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/24/dining/19Kenji1/19Kenji1-mediumThreeByTwo210-v2.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/24/dining/19Kenji1/19Kenji1-mediumThreeByTwo440-v2.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/8b596b5a-3f2c-5956-bb46-235e1b89b9f9",
                "url": "https://www.nytimes.com/2021/02/27/nyregion/cuomo-charlotte-bennett-sexual-harassment.html",
                "id": 100000007623064,
                "asset_id": 100000007623064,
                "source": "New York Times",
                "published_date": "2021-02-27",
                "updated": "2021-03-01 05:51:32",
                "section": "New York",
                "subsection": "",
                "nytdsection": "new york",
                "adx_keywords": "Sexual Harassment;Politics and Government;Workplace Hazards and Violations;Governors (US);Cuomo, Andrew M;Bennett, Charlotte (1995- );Boylan, Lindsey (1984- );New York State",
                "column": null,
                "byline": "By Jesse McKinley",
                "type": "Article",
                "title": "Cuomo Is Accused of Sexual Harassment by a 2nd Former Aide",
                "abstract": "The woman, 25, said that when they were alone in his office, Gov. Andrew Cuomo asked if she “had ever been with an older man.”",
                "des_facet": [
                    "Sexual Harassment",
                    "Politics and Government",
                    "Workplace Hazards and Violations",
                    "Governors (US)"
                ],
                "org_facet": [],
                "per_facet": [
                    "Cuomo, Andrew M",
                    "Bennett, Charlotte (1995- )",
                    "Boylan, Lindsey (1984- )"
                ],
                "geo_facet": [
                    "New York State"
                ],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "Charlotte Bennett said she decided to make her allegations public in part because she wanted to counter the way Mr. Cuomo “wields his power.”",
                        "copyright": "Elizabeth Frantz for The New York Times",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/27/nyregion/00cuomo-harassmentNEW/00cuomo-harassmentNEW-thumbStandard.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/27/nyregion/00cuomo-harassmentNEW/00cuomo-harassmentNEW-mediumThreeByTwo210.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/27/nyregion/00cuomo-harassmentNEW/00cuomo-harassmentNEW-mediumThreeByTwo440.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/995ff32a-dd00-54c5-a591-b01a1d3afb5d",
                "url": "https://www.nytimes.com/2021/02/22/us/politics/supreme-court-trump-taxes-financial-records.html",
                "id": 100000007401742,
                "asset_id": 100000007401742,
                "source": "New York Times",
                "published_date": "2021-02-22",
                "updated": "2021-02-23 08:45:40",
                "section": "U.S.",
                "subsection": "Politics",
                "nytdsection": "u.s.",
                "adx_keywords": "Trump Tax Returns;United States Politics and Government;Decisions and Verdicts;Federal Taxes (US);Trump, Donald J;Vance, Cyrus R Jr;Supreme Court (US);Mazars USA",
                "column": null,
                "byline": "By Adam Liptak, William K. Rashbaum, Ben Protess and Benjamin Weiser",
                "type": "Article",
                "title": "Supreme Court Denies Trump’s Final Bid to Block Release of Tax Returns",
                "abstract": "The former president’s accountants will give New York prosecutors the financial records he has spent years trying to shield.",
                "des_facet": [
                    "Trump Tax Returns",
                    "United States Politics and Government",
                    "Decisions and Verdicts",
                    "Federal Taxes (US)"
                ],
                "org_facet": [
                    "Supreme Court (US)",
                    "Mazars USA"
                ],
                "per_facet": [
                    "Trump, Donald J",
                    "Vance, Cyrus R Jr"
                ],
                "geo_facet": [],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "The case concerned a subpoena to former President Donald J. Trump’s accountants, Mazars USA, by the office of the Manhattan district attorney.",
                        "copyright": "Pete Marovich for The New York Times",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/01/25/us/politics/00dc-scotus-trump-copy/00dc-scotus-trump-copy-thumbStandard-v3.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/01/25/us/politics/00dc-scotus-trump-copy/00dc-scotus-trump-copy-mediumThreeByTwo210-v3.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/01/25/us/politics/00dc-scotus-trump-copy/00dc-scotus-trump-copy-mediumThreeByTwo440-v3.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/c4683571-eb30-5028-a14a-b8631d1542a9",
                "url": "https://www.nytimes.com/2021/02/22/us/el-chapo-emma-coronel-aispuro.html",
                "id": 100000007618770,
                "asset_id": 100000007618770,
                "source": "New York Times",
                "published_date": "2021-02-22",
                "updated": "2021-02-23 11:21:45",
                "section": "U.S.",
                "subsection": "",
                "nytdsection": "u.s.",
                "adx_keywords": "Drug Cartels;Drug Abuse and Traffic;Guzman Loera, Joaquin;Coronel Aispuro, Emma;Sinaloa Cartel;Mexico",
                "column": null,
                "byline": "By Alan Feuer and Adam Goldman",
                "type": "Article",
                "title": "U.S. Arrests El Chapo’s Wife, Charging Her With Helping to Run Drug Empire",
                "abstract": "Emma Coronel Aispuro, who had been under investigation for at least two years, was also charged with plotting to break her husband, Mexico’s most notorious drug kingpin, out of prison.",
                "des_facet": [
                    "Drug Cartels",
                    "Drug Abuse and Traffic"
                ],
                "org_facet": [
                    "Sinaloa Cartel"
                ],
                "per_facet": [
                    "Guzman Loera, Joaquin",
                    "Coronel Aispuro, Emma"
                ],
                "geo_facet": [
                    "Mexico"
                ],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "Emma Coronel Aispuro leaving federal court in Brooklyn during her husband’s trial in 2019.",
                        "copyright": "Justin Lane/EPA, via Shutterstock",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/22/us/22dc-justice-promo/22dc-justice-alert-thumbStandard.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/22/us/22dc-justice-promo/merlin_184129044_02a88091-bcf8-40d5-bc97-71bab0fdc946-mediumThreeByTwo210.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/22/us/22dc-justice-promo/merlin_184129044_02a88091-bcf8-40d5-bc97-71bab0fdc946-mediumThreeByTwo440.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/ea3856bf-7575-5a3c-9761-02d3cdb87c0f",
                "url": "https://www.nytimes.com/2021/02/22/arts/music/daft-punk-breakup.html",
                "id": 100000007617653,
                "asset_id": 100000007617653,
                "source": "New York Times",
                "published_date": "2021-02-22",
                "updated": "2021-02-23 00:51:57",
                "section": "Arts",
                "subsection": "Music",
                "nytdsection": "arts",
                "adx_keywords": "Pop and Rock Music;Daft Punk (Music Group)",
                "column": null,
                "byline": "By Joe Coscarelli",
                "type": "Article",
                "title": "Daft Punk Announces Breakup After 28 Years",
                "abstract": "The enigmatic, influential French electronic-music duo released four albums and collected six Grammys throughout a career marked by a disinterest in fame.",
                "des_facet": [
                    "Pop and Rock Music"
                ],
                "org_facet": [
                    "Daft Punk (Music Group)"
                ],
                "per_facet": [],
                "geo_facet": [],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "The French electronic duo Daft Punk announced its end wordlessly, through music and iconography, in a YouTube video called &ldquo;Epilogue.&rdquo;",
                        "copyright": "Chad Batka for The New York Times",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/arts/22daftpunk/merlin_68436082_cbc2d16f-e4ce-4e8e-9f06-d2789c9f309b-thumbStandard.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/arts/22daftpunk/merlin_68436082_cbc2d16f-e4ce-4e8e-9f06-d2789c9f309b-mediumThreeByTwo210.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/arts/22daftpunk/merlin_68436082_cbc2d16f-e4ce-4e8e-9f06-d2789c9f309b-mediumThreeByTwo440.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/d6c29105-728e-5c89-b193-78ab13919830",
                "url": "https://www.nytimes.com/2021/02/23/nyregion/new-jersey-lucia-declerck-covid.html",
                "id": 100000007618331,
                "asset_id": 100000007618331,
                "source": "New York Times",
                "published_date": "2021-02-23",
                "updated": "2021-02-26 09:52:51",
                "section": "New York",
                "subsection": "",
                "nytdsection": "new york",
                "adx_keywords": "Coronavirus (2019-nCoV);Nursing Homes;Vaccination and Immunization;Content Type: Personal Profile;DeClerck, Lucia (1916- );New Jersey",
                "column": null,
                "byline": "By Tracey Tully",
                "type": "Article",
                "title": "This 105-Year-Old Beat Covid. She Credits Gin-Soaked Raisins.",
                "abstract": "Lucia DeClerck, the oldest resident of her New Jersey nursing home, tested positive for the virus on her 105th birthday, one day after her second vaccine shot.",
                "des_facet": [
                    "Coronavirus (2019-nCoV)",
                    "Nursing Homes",
                    "Vaccination and Immunization",
                    "Content Type: Personal Profile"
                ],
                "org_facet": [],
                "per_facet": [
                    "DeClerck, Lucia (1916- )"
                ],
                "geo_facet": [
                    "New Jersey"
                ],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "Lucia DeClerck, 105, said her secret to a long life was simple. “Prayer. Prayer. Prayer,” she said. “One step at a time. No junk food.”",
                        "copyright": "Michael Neiman",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/nyregion/23njvirus-olderpatient/23njvirus-olderpatient-thumbStandard-v2.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/nyregion/23njvirus-olderpatient/23njvirus-olderpatient-mediumThreeByTwo210-v3.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/nyregion/23njvirus-olderpatient/23njvirus-olderpatient-mediumThreeByTwo440-v3.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/7fbe62e3-9aab-5421-b9a2-b2f7aa655037",
                "url": "https://www.nytimes.com/2021/02/24/science/nasa-mars-parachute-code.html",
                "id": 100000007620308,
                "asset_id": 100000007620308,
                "source": "New York Times",
                "published_date": "2021-02-24",
                "updated": "2021-02-26 09:13:26",
                "section": "Science",
                "subsection": "",
                "nytdsection": "science",
                "adx_keywords": "Perseverance (Mars Rover);Parachutes and Parachute Jumping;Cryptography, Codes and Ciphers;Mars (Planet);Space and Astronomy;National Aeronautics and Space Administration;Jet Propulsion Laboratory",
                "column": null,
                "byline": "By Kenneth Chang",
                "type": "Article",
                "title": "NASA Sent a Secret Message to Mars. Meet the People Who Decoded It.",
                "abstract": "Engineers hinted they had hidden a code in the parachute that landed the Perseverance rover. Within hours, puzzle enthusiasts cracked it.",
                "des_facet": [
                    "Perseverance (Mars Rover)",
                    "Parachutes and Parachute Jumping",
                    "Cryptography, Codes and Ciphers",
                    "Mars (Planet)",
                    "Space and Astronomy"
                ],
                "org_facet": [
                    "National Aeronautics and Space Administration",
                    "Jet Propulsion Laboratory"
                ],
                "per_facet": [],
                "geo_facet": [],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "The parachute that helped land the Perseverance spacecraft, seen from an upward-looking camera during landing on Feb. 18. Within hours of this image’s release on Monday, people figured out the message hidden in its pattern.",
                        "copyright": "NASA/JPL-Caltech",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/03/02/science/24MARS-PARACHUTE1/24MARS-PARACHUTE1-thumbStandard-v4.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/03/02/science/24MARS-PARACHUTE1/24MARS-PARACHUTE1-mediumThreeByTwo210-v3.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/03/02/science/24MARS-PARACHUTE1/24MARS-PARACHUTE1-mediumThreeByTwo440-v3.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/e659ceb5-5762-571d-994c-e19c4df948b7",
                "url": "https://www.nytimes.com/2021/02/20/opinion/sunday/endocrine-disruptors-sperm.html",
                "id": 100000007613959,
                "asset_id": 100000007613959,
                "source": "New York Times",
                "published_date": "2021-02-20",
                "updated": "2021-02-23 01:25:30",
                "section": "Opinion",
                "subsection": "Sunday Review",
                "nytdsection": "opinion",
                "adx_keywords": "Reproduction (Biological);Infertility;Sperm;Endocrine Gland;United States Politics and Government;Regulation and Deregulation of Industry;Chemicals;Swan, Shanna H;United States",
                "column": null,
                "byline": "By Nicholas Kristof",
                "type": "Article",
                "title": "What Are Sperm Telling Us?",
                "abstract": "Scientists are concerned by falling sperm counts and declining egg quality. Endocrine-disrupting chemicals may be the problem.",
                "des_facet": [
                    "Reproduction (Biological)",
                    "Infertility",
                    "Sperm",
                    "Endocrine Gland",
                    "United States Politics and Government",
                    "Regulation and Deregulation of Industry",
                    "Chemicals"
                ],
                "org_facet": [],
                "per_facet": [
                    "Swan, Shanna H"
                ],
                "geo_facet": [
                    "United States"
                ],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "",
                        "copyright": " SciePro/Shutterstock",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/20/opinion/20kristof/20kristof-thumbStandard.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/20/opinion/20kristof/20kristof-mediumThreeByTwo210.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/20/opinion/20kristof/20kristof-mediumThreeByTwo440.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/e63c3c4e-ae0d-57ee-9f21-de8edaa3ae6c",
                "url": "https://www.nytimes.com/2021/02/23/health/coronavirus-california-variant.html",
                "id": 100000007619583,
                "asset_id": 100000007619583,
                "source": "New York Times",
                "published_date": "2021-02-23",
                "updated": "2021-02-25 19:16:54",
                "section": "Health",
                "subsection": "",
                "nytdsection": "health",
                "adx_keywords": "Coronavirus (2019-nCoV);Disease Rates;Research;Genetics and Heredity;your-feed-science;your-feed-healthcare;Chiu, Charles;California;San Francisco (Calif)",
                "column": null,
                "byline": "By Carl Zimmer",
                "type": "Article",
                "title": "Studies Examine Variant Surging in California, and the News Isn’t Good",
                "abstract": "Two studies confirm that a new coronavirus mutant in California is more contagious, although the scale of its threat is unclear.",
                "des_facet": [
                    "Coronavirus (2019-nCoV)",
                    "Disease Rates",
                    "Research",
                    "Genetics and Heredity",
                    "your-feed-science",
                    "your-feed-healthcare"
                ],
                "org_facet": [],
                "per_facet": [
                    "Chiu, Charles"
                ],
                "geo_facet": [
                    "California",
                    "San Francisco (Calif)"
                ],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "A medical team intubated a Covid-19 patient at Marian Regional Medical Center in Santa Maria, Calif., this month. ",
                        "copyright": "Daniel Dreifuss for The New York Times",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/science/23virus-CAvariant1/23virus-CAvariant1-thumbStandard.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/science/23virus-CAvariant1/23virus-CAvariant1-mediumThreeByTwo210.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/science/23virus-CAvariant1/23virus-CAvariant1-mediumThreeByTwo440.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/9033066f-ddca-5e5f-b91e-00c2856aa97b",
                "url": "https://www.nytimes.com/2021/02/22/arts/obama-springsteen-podcast-spotify.html",
                "id": 100000007611926,
                "asset_id": 100000007611926,
                "source": "New York Times",
                "published_date": "2021-02-22",
                "updated": "2021-02-25 08:51:52",
                "section": "Arts",
                "subsection": "",
                "nytdsection": "arts",
                "adx_keywords": "United States Politics and Government;Music;Podcasts;Obama, Barack;Springsteen, Bruce;Higher Ground Productions;Spotify",
                "column": null,
                "byline": "By Ben Sisario",
                "type": "Article",
                "title": "Barack Obama and Bruce Springsteen: The Latest Podcast Duo",
                "abstract": "Their new show, “Renegades: Born in the USA,” features the 44th president and the musician speaking intimately and expansively on topics like race, fatherhood and the country’s painful divisions.",
                "des_facet": [
                    "United States Politics and Government",
                    "Music",
                    "Podcasts"
                ],
                "org_facet": [
                    "Higher Ground Productions",
                    "Spotify"
                ],
                "per_facet": [
                    "Obama, Barack",
                    "Springsteen, Bruce"
                ],
                "geo_facet": [],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "The new podcast hosted by Bruce Springsteen and Barack Obama is drawn from a series of one-on-one conversations at Springsteen’s home studio last year.",
                        "copyright": "Rob DeMartin",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/arts/22spotify/22spotify-thumbStandard-v2.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/arts/22spotify/22spotify-mediumThreeByTwo210-v2.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/23/arts/22spotify/22spotify-mediumThreeByTwo440-v2.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/5208c539-c446-53e2-a5c4-b5c3eadb5459",
                "url": "https://www.nytimes.com/2021/02/23/nyregion/daniel-prude-rochester-police.html",
                "id": 100000007619563,
                "asset_id": 100000007619563,
                "source": "New York Times",
                "published_date": "2021-02-23",
                "updated": "2021-02-24 10:00:42",
                "section": "New York",
                "subsection": "",
                "nytdsection": "new york",
                "adx_keywords": "Police Brutality, Misconduct and Shootings;Black People;Black Lives Matter Movement;Prude, Daniel (d 2020);James, Letitia;Rochester (NY);New York State",
                "column": null,
                "byline": "By Sarah Maslin Nir",
                "type": "Article",
                "title": "Rochester Officers Will Not Be Charged in Killing of Daniel Prude",
                "abstract": "Mr. Prude, a Black man who was having an apparent psychotic episode, died after police officers placed a mesh hood over his head and pinned him to the ground.",
                "des_facet": [
                    "Police Brutality, Misconduct and Shootings",
                    "Black People",
                    "Black Lives Matter Movement"
                ],
                "org_facet": [],
                "per_facet": [
                    "Prude, Daniel (d 2020)",
                    "James, Letitia"
                ],
                "geo_facet": [
                    "Rochester (NY)",
                    "New York State"
                ],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "Protesters in Rochester on Tuesday night after news broke that no officers would be charged in Daniel Prude’s death.",
                        "copyright": "Libby March for The New York Times",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/03/23/nyregion/23prudejury25/23prudejury25-thumbStandard.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/03/23/nyregion/23prudejury25/23prudejury25-mediumThreeByTwo210.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/03/23/nyregion/23prudejury25/23prudejury25-mediumThreeByTwo440.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/bc4e0772-c16f-50fb-a9bb-ba34b683aba1",
                "url": "https://www.nytimes.com/2021/02/25/us/politics/republicans-trump-biden-stimulus.html",
                "id": 100000007622853,
                "asset_id": 100000007622853,
                "source": "New York Times",
                "published_date": "2021-02-25",
                "updated": "2021-02-26 10:59:03",
                "section": "U.S.",
                "subsection": "Politics",
                "nytdsection": "u.s.",
                "adx_keywords": "Stimulus (Economic);Polls and Public Opinion;Coronavirus Aid, Relief, and Economic Security Act (2020);Coronavirus (2019-nCoV);United States Politics and Government;United States Economy;National Debt (US);Federal Budget (US);Conservatism (US Politics);Biden, Joseph R Jr;Trump, Donald J;Republican Party",
                "column": null,
                "byline": "By Lisa Lerer",
                "type": "Article",
                "title": "Give Biden a Chance? On Covid Aid, Some Trump Voters Just Might",
                "abstract": "Republican leaders in Washington firmly oppose the president’s stimulus plan, but a sizable number of Trump voters support it, interviews and polls show.",
                "des_facet": [
                    "Stimulus (Economic)",
                    "Polls and Public Opinion",
                    "Coronavirus Aid, Relief, and Economic Security Act (2020)",
                    "Coronavirus (2019-nCoV)",
                    "United States Politics and Government",
                    "United States Economy",
                    "National Debt (US)",
                    "Federal Budget (US)",
                    "Conservatism (US Politics)"
                ],
                "org_facet": [
                    "Republican Party"
                ],
                "per_facet": [
                    "Biden, Joseph R Jr",
                    "Trump, Donald J"
                ],
                "geo_facet": [],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "President Biden discussed his recovery plan at the White House on Monday.",
                        "copyright": "Doug Mills/The New York Times",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/25/us/politics/25repubs-stimulus/25repubs-stimulus-thumbStandard.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/25/us/politics/25repubs-stimulus/merlin_184117401_4dfac4fd-0902-4b6f-8cc9-e0a8786c5b64-mediumThreeByTwo210.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/25/us/politics/25repubs-stimulus/merlin_184117401_4dfac4fd-0902-4b6f-8cc9-e0a8786c5b64-mediumThreeByTwo440.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/6014d2e3-bcff-5ce7-9707-fd9d523a7324",
                "url": "https://www.nytimes.com/2021/02/22/us/trump-tax-returns.html",
                "id": 100000007617936,
                "asset_id": 100000007617936,
                "source": "New York Times",
                "published_date": "2021-02-22",
                "updated": "2021-02-25 18:25:33",
                "section": "U.S.",
                "subsection": "",
                "nytdsection": "u.s.",
                "adx_keywords": "Trump Tax Returns;Decisions and Verdicts;Federal Taxes (US);United States Politics and Government;Trump, Donald J;Vance, Cyrus R Jr;Trump Organization;Supreme Court (US);Mazars USA",
                "column": null,
                "byline": "By Mike McIntire",
                "type": "Article",
                "title": "Trump’s Tax Returns Aren’t the Only Crucial Records Prosecutors Will Get",
                "abstract": "For all that they reveal, tax returns have limitations. Other records from the former president’s accountants may help give a fuller picture of his finances.",
                "des_facet": [
                    "Trump Tax Returns",
                    "Decisions and Verdicts",
                    "Federal Taxes (US)",
                    "United States Politics and Government"
                ],
                "org_facet": [
                    "Trump Organization",
                    "Supreme Court (US)",
                    "Mazars USA"
                ],
                "per_facet": [
                    "Trump, Donald J",
                    "Vance, Cyrus R Jr"
                ],
                "geo_facet": [],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "The Supreme Court on Monday denied former President Donald J. Trump’s final bid to block the release of his financial records to the Manhattan district attorney.",
                        "copyright": "Doug Mills/The New York Times",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/22/us/politics/22trump-returns1/22trump-returns1-thumbStandard.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/22/us/politics/22trump-returns1/22trump-returns1-mediumThreeByTwo210.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/22/us/politics/22trump-returns1/22trump-returns1-mediumThreeByTwo440.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            },
            {
                "uri": "nyt://article/457341ea-a803-5e19-ad4f-b3a191fb3fab",
                "url": "https://www.nytimes.com/2021/02/20/style/vhs-tapes.html",
                "id": 100000007593802,
                "asset_id": 100000007593802,
                "source": "New York Times",
                "published_date": "2021-02-20",
                "updated": "2021-02-23 09:30:39",
                "section": "Style",
                "subsection": "",
                "nytdsection": "style",
                "adx_keywords": "Video Recordings, Downloads and Streaming;Movies;Collectors and Collections",
                "column": null,
                "byline": "By Hannah Selinger",
                "type": "Article",
                "title": "Who Is Still Buying VHS Tapes?",
                "abstract": "Despite the rise of streaming, there is still a vast library of moving images that are categorically unavailable anywhere else. Also a big nostalgia factor.",
                "des_facet": [
                    "Video Recordings, Downloads and Streaming",
                    "Movies",
                    "Collectors and Collections"
                ],
                "org_facet": [],
                "per_facet": [],
                "geo_facet": [],
                "media": [
                    {
                        "type": "image",
                        "subtype": "photo",
                        "caption": "",
                        "copyright": "Getty Images",
                        "approved_for_syndication": 1,
                        "media-metadata": [
                            {
                                "url": "https://static01.nyt.com/images/2021/02/21/fashion/00VHS/00VHS-thumbStandard-v3.jpg",
                                "format": "Standard Thumbnail",
                                "height": 75,
                                "width": 75
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/21/fashion/00VHS/00VHS-mediumThreeByTwo210.jpg",
                                "format": "mediumThreeByTwo210",
                                "height": 140,
                                "width": 210
                            },
                            {
                                "url": "https://static01.nyt.com/images/2021/02/21/fashion/00VHS/00VHS-mediumThreeByTwo440.jpg",
                                "format": "mediumThreeByTwo440",
                                "height": 293,
                                "width": 440
                            }
                        ]
                    }
                ],
                "eta_id": 0
            }
        ]
    }
    """.data(using: .utf8)!
    
}

struct SectionDataResponseModel: Decodable {
    
    var uri: String?
    var url: String?
    var id: Double?
    var assetId: Double?
    var source: String?
    var publishedDate: String?
    var updatedDate: String?
    var section: String?
    var subsection: String?
    var nytdsection: String?
    var adxKeywords: String?
    var byLine: String?
    var type: String?
    var title: String?
    var abstract: String?
    var desFacet: [String]?
    var orgFacet: [String]?
    var perFacet: [String]?
    var geoFacet: [String]?
    var media: [Media]?
    var etaId: Int?

    // use the below standard during debug
    static let sample = """
{
               "uri": "nyt://article/6014d2e3-bcff-5ce7-9707-fd9d523a7324",
               "url": "https://www.nytimes.com/2021/02/22/us/trump-tax-returns.html",
               "id": 100000007617936,
               "asset_id": 100000007617936,
               "source": "New York Times",
               "published_date": "2021-02-22",
               "updated": "2021-02-25 18:25:33",
               "section": "U.S.",
               "subsection": "",
               "nytdsection": "u.s.",
               "adx_keywords": "Trump Tax Returns;Decisions and Verdicts;Federal Taxes (US);United States Politics and Government;Trump, Donald J;Vance, Cyrus R Jr;Trump Organization;Supreme Court (US);Mazars USA",
               "column": null,
               "byline": "By Mike McIntire",
               "type": "Article",
               "title": "Trump’s Tax Returns Aren’t the Only Crucial Records Prosecutors Will Get",
               "abstract": "For all that they reveal, tax returns have limitations. Other records from the former president’s accountants may help give a fuller picture of his finances.",
               "des_facet": [
                   "Trump Tax Returns",
                   "Decisions and Verdicts",
                   "Federal Taxes (US)",
                   "United States Politics and Government"
               ],
               "org_facet": [
                   "Trump Organization",
                   "Supreme Court (US)",
                   "Mazars USA"
               ],
               "per_facet": [
                   "Trump, Donald J",
                   "Vance, Cyrus R Jr"
               ],
               "geo_facet": [],
               "media": [
                   {
                       "type": "image",
                       "subtype": "photo",
                       "caption": "The Supreme Court on Monday denied former President Donald J. Trump’s final bid to block the release of his financial records to the Manhattan district attorney.",
                       "copyright": "Doug Mills/The New York Times",
                       "approved_for_syndication": 1,
                       "media-metadata": [
                           {
                               "url": "https://static01.nyt.com/images/2021/02/22/us/politics/22trump-returns1/22trump-returns1-thumbStandard.jpg",
                               "format": "Standard Thumbnail",
                               "height": 75,
                               "width": 75
                           },
                           {
                               "url": "https://static01.nyt.com/images/2021/02/22/us/politics/22trump-returns1/22trump-returns1-mediumThreeByTwo210.jpg",
                               "format": "mediumThreeByTwo210",
                               "height": 140,
                               "width": 210
                           },
                           {
                               "url": "https://static01.nyt.com/images/2021/02/22/us/politics/22trump-returns1/22trump-returns1-mediumThreeByTwo440.jpg",
                               "format": "mediumThreeByTwo440",
                               "height": 293,
                               "width": 440
                           }
                       ]
                   }
               ],
               "eta_id": 0
}
""".data(using: .utf8)!
    
}

struct Media: Codable {
    
    var type: String?
    var subType: String?
    var caption: String?
    var copyright: String?
    var approvedForSyndication: Int?
    var mediaMetadata: [MediaMetadata]?
    
    private enum CodingKeys: String, CodingKey {
        case type                   = "type"
        case subType                = "subtype"
        case caption                = "caption"
        case copyright              = "copyright"
        case approvedForSyndication = "approved_for_syndication"
        case mediaMetadata          = "media-metadata"
    }
    
    // use the below standard during debug
    static let sample = """
        {
                    "type": "image",
                    "subtype": "photo",
                    "caption": "The Supreme Court on Monday denied former President Donald J. Trump’s final bid to block the release of his financial records to the Manhattan district attorney.",
                    "copyright": "Doug Mills/The New York Times",
                    "approved_for_syndication": 1,
                    "media-metadata": [
                        {
                            "url": "https://static01.nyt.com/images/2021/02/22/us/politics/22trump-returns1/22trump-returns1-thumbStandard.jpg",
                            "format": "Standard Thumbnail",
                            "height": 75,
                            "width": 75
                        },
                        {
                            "url": "https://static01.nyt.com/images/2021/02/22/us/politics/22trump-returns1/22trump-returns1-mediumThreeByTwo210.jpg",
                            "format": "mediumThreeByTwo210",
                            "height": 140,
                            "width": 210
                        },
                        {
                            "url": "https://static01.nyt.com/images/2021/02/22/us/politics/22trump-returns1/22trump-returns1-mediumThreeByTwo440.jpg",
                            "format": "mediumThreeByTwo440",
                            "height": 293,
                            "width": 440
                        }
                    ]
                }
    """.data(using: .utf8)!
}

struct MediaMetadata: Codable {
    
    var imageUrl: String?
    var format: String?
    var height: Int?
    var width: Int?
    
    private enum CodingKeys: String, CodingKey {
        case imageUrl = "url"
        case format   = "format"
        case height   = "height"
        case width    = "width"
    }
    
    // use the below standard during debug
    static let sample = """
    {
      "url": "https://static01.nyt.com/images/2021/02/22/us/politics/22trump-returns1/22trump-returns1-thumbStandard.jpg",
      "format": "Standard Thumbnail",
      "height": 75,
      "width": 75
    }
    """.data(using: .utf8)!
}
