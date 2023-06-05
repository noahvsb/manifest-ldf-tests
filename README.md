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

# How to add new queries

In most cases, you'll want to add queries to the `sparql/sparql-manifest.ttl`.

To do this, you'll have to do the following:
1. Globally install `ldf-recorder`.
    If you made changes to Comunica that were not released yet, you may have to clone https://github.com/comunica/ldf-recorder, link your local `@comunica/query-sparql`, and use that instance of `ldf-recorder` for recording.
2. Add your new query entry to `sparql/manifest-raw.txt`.
    The expected format is test label and sources.
    If you want to record over plain files, then you may have to temporarily host the file on localhost (e.g. using `http-server`), and define it as such in `sparql/manifest-raw.txt`. After generating, make sure to add both the original file and the recorded file to git, and update `sparql/manifest-raw.txt` to refer to the original file via the URL as it will exist on GitHub (see how this is done in the other tests).
3. Run `./generate.sh` to generate the expected outputs of all tests in `sparql/manifest-raw.txt`.
    You could temporarily omit elements from `sparql/manifest-raw.txt` to only generate those test outputs that have changed.
4. Add your new query entry to `sparql/sparql-manifest.ttl`.
5. After testing and pushing, this can be tested in Comunica by running `yarn run integration` inside `engines/query-sparql`.

# More information

## queries

A lot of the queries are inspired by the pre-built queries on [query.linkeddatafragments.org](http://query.linkeddatafragments.org/).

## ontology-query-testing

The ontology which is used by the above named test manifests. More information can be found here [ontology](https://github.com/comunica/ontology-query-testing/).

## rdf-test-suite-ldf.js

The test-suite that is able to execute the above test manifests. More information can be found here [test-suite](https://github.com/comunica/rdf-test-suite-ldf.js/).

## ldf-recorder

The tool that we used to create the mockingfiles used for `TPF`- and `SPARQL`- endpoint mocking while testing in the [test-suite](#rdf-test-suite-ldf.js). More information can be found here [recorder](https://github.com/comunica/ldf-recorder/).