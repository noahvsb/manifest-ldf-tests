# manifest-ldf-tests
A repository containing test-manifests that can be used to do integration testing. Based on the [ontology-query-testing](https://github.com/comunica/ontology-query-testing/) and used in the [rdf-test-suite-ldf.js](https://github.com/comunica/rdf-test-suite-ldf.js).

# Content

This repository consists of 4 test manifests that can be used to test the 4 query-engines of [comunica](https://github.com/comunica/comunica/).

| manifest name | manifest URI | tested sources |
| --- | --- | --- |
| SPARQL | [sparql-manifest.ttl](https://comunica.github.io/manifest-ldf-tests/sparql/sparql-manifest.ttl) | `TPF`, `FILE`, `SPARQL` |
| SPARQL-FILE | [file-manifest.ttl](https://comunica.github.io/manifest-ldf-tests/sparql-file/file-manifest.ttl) | `FILE` |
| SPARQL-HDT | [hdt-manifest.ttl](https://comunica.github.io/manifest-ldf-tests/sparql-hdt/hdt-manifest.ttl) | `HDT` |
| SPARQL-RDFJS | [rdfjs-manifest.ttl](https://comunica.github.io/manifest-ldf-tests/sparql-rdfjs/rdfjs-manifest.ttl) | `RDFJS` |

# More information

## queries

A lot of the queries are inspired by the pre-built queries on [query.linkeddatafragments.org](http://query.linkeddatafragments.org/).

## ontology-query-testing

The ontology which is used by the above named test manifests. More information can be found here [ontology](https://github.com/comunica/ontology-query-testing/).

## rdf-test-suite-ldf.js

The test-suite that is able to execute the above test manifests. More information can be found here [test-suite](https://github.com/comunica/rdf-test-suite-ldf.js/).

## ldf-recorder

The tool that we used to create the mockingfiles used for `TPF`- and `SPARQL`- endpoint mocking while testing in the [test-suite](#rdf-test-suite-ldf.js). More information can be found here [recorder](https://github.com/comunica/ldf-recorder/).