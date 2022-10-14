# geo-db-base

DB structure and content for basic geo data ready to import. Both relational and plain structure. <br>
Mysql dumps + csv exports.<br>

* [Available Tables](#Tables)
* [Basic Info](#Basic-Info)
* [Structures and data types](#Structures-and-data-types)

## Tables

- [countries](#countries)
- [timezones](#timezones)
- [languages](#languages)
- [currencies](#currencies)
- [world_regions](#world_regions)
- [domains](#domains)
- [country_languages (relational version only)](#country_languages)
- [country_currencies (relational version only)](#country_currencies)
- [country_names (relational version only)](#country_names)

## Basic Info

* Relational vs Plain: <br>
  The plain version doesn't have relational tables nor references to other records. <br>
  Examples: relational DB will use `country_id` whereas the plain version will have `country` column with the
  respective country code explicitly listed. <br> 
  Plain version will have the country languages listed as json object in `countries.languages`, relational has a separate table `country_languages`. <br>
  Hence any data of the plain version can be used individually without the need of other tables,
  but the relational will require the other tables <br><br>

* Laravel migrations available but purely optional

## Structure and data types

* ### countries

All world countries with info

| Column    | Data Type | Description                                                               | Comment                                                        | 
|-----------|------|---------------------------------------------------------------------------|----------------------------------------------------------------|
| name | string | Official english name                                                     |
| native_name | string | Country name in its language                                              |
| common_name | string | Secondary commonly used name                                              |
| code | string | ISO two letter country code                                               |
| code_3 | string | ISO three letter country code                                             |
| capital | string | capital(s) city                                                           |
| continent | string |                                                                           |
| world_region | string | world region of the country <br>eg: Western Europe                        | **plain** version only                                         |
| world_region_id | int  | `id` of the equivalent region from `world_regions` table                  | **relational** version only                                    |
| timezones | json | UTC offsets of all timezones in the country                               | 
| languages | json | iso 639-1 (two letter - if it has one) codes of the country languages     | **plain** version only <br> relational in `country_languages`  |
| currencies | json | country's official currencies                                             | **plain** version only <br> relational in `country_currencies` |
| latitude | string |                                                                           |
| longitude | string |                                                                           |
| calling_codes | json | country's internation calling code(s)                                     |
| border_countries | json | iso two letter codes of bordering countries                               | **plain** version only                                         |
| border_countries_id | json | `id`s of the equivalent bordering countries                               | **relational** version only                                    |
| translations | json | object with the country name in multiple languages                        | **plain** version only <br> relational in `country_names`      |
| alt_names | json | other unofficial names used <br>(either generic or in specific languages) | **plain** version only <br> relational in `country_names`      |

* ### timezones
All timezones - content based on php's `DateTimeZone`

| Column       | Data Type | Description              | Comment                     | 
|--------------|-----------|--------------------------|-----------------------------|
| name         | string    |                          |
| abrv         | string    |                          |                             |
| utc_offset   | string    |                          |                             |
| latitude     | string    |                          |                             |
| longitude    | string    |                          |                             |
| country_code | string    | Country code             | **Plain** version only      |
| country_id   | int       | references `countries.id` | **Relational** version only |
| comments     | string    |              |                             |

* ### world_regions

| Column    | Data Type | Description                                     | Comment                                                                      | 
|-----------|-----------|-------------------------------------------------|------------------------------------------------------------------------------|
| name      | string    |                                                 |
| subregion | bool      | Whether the region is a main one or a subregion | Eg: _Europe_: `subregion = false`<br/> _Northern Europe_: `subregion` = true |
| parent_id | int       | The parent region in case `subregion = true`     | references the respective `world_regions.id`                                 |


* ### languages

| Column      | Data Type | Description                   | Comment                                                                              | 
|-------------|-----------|-------------------------------|--------------------------------------------------------------------------------------|
| name        | string    |                               |
| native_name | string    |                               |
| code_iso    | string    | ISO 639-1 (two letter code)   | some languages do not have one 639-2 is used for those                               |
| code_iso_2  | string    | ISO 639-2 (three letter code) |
| alt_iso     | string    | other 639-2 code              | some languages have often used 639-2/B codes different from 639-2/T <br> eg: persian |
 

* ### currencies

| Column     | Data Type | Description              |  
|------------|-----------|--------------------------|
| name       | string    |                          |
| code       | string    | ISO currency code        |
| symbol     | string    | currency official symbol |                                

* ### domains

Top level domains for each country

| Column  | Data Type | Description                   | Comment                     | 
|---------|-----|-------------------------------|-----------------------------|
| domain  | string |                               |
| country | string | Country code (two letter)     | **Plain** version only      |
| country_id | int | references the `countries.id` | **Relational** version only |

* ### country_languages

Relational version only. Countries' official languages

| Column      | Data Type | Description             |
|-------------|-----|-------------------------------|
| country_id  | int | references the `countries.id` |
| language_id | int | references the `languages.id` |

* ### country_names

**Relational** version only. Country's name translations and alternative names

| Column      | Data Type | Description                   | Comment                                                                                                                              |
|-------------|-----------|-------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| name        | string    | the translation/alt name      |
| country_id  | int       | references the `countries.id` |
| language_id | int       | references the `languages.id` | The language of the translation or alt. name. <br> Can be `null` in case the alt name is generic                                     |
| type        | string    | type of alt name              | _official_ = official translation/name <br>_common_ = not official but commonly used in some language<br/> _alt spelling_ = others.. |

* ### country_currencies

**Relational** version only. Countries' official currencies

| Column      | Data Type | Description                    |
|-------------|-----|--------------------------------|
| country_id  | int | references the `countries.id`  |
| currency_id | int | references the `currencies.id` |

<br>

#### Primary original data sources

* restcountries.com
* iso639-3.sil.org/code_tables
* php `DateTimeZone`