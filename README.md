# marginalia

The goal of this project is to assist in locating text within a literary corpus that was influenced by the author's reading of external texts, which we refer to as source passages. The literary corpus being used for developement comes from the writing of Herman Melville (specifically, the project Gutenberg text of *Moby Dick*) and his readings of source passages come from the Melville [Marginalia  project](http://melvillesmarginalia.org/).

The approach being taken is to search through the literary corpus looking for key terms, using a "bag of words" approach. The following packages were used to produce the results in this repository:

* lsa -- latent semantic analysis package by Fridolin Wild.
* tm -- text mining package by Ingo Feinerer and Kurt Hornik.
* string manipulation and file i/o packages. Scripts in the code folder document the specific packages used in the code samples.

The heavy lifting in producing the results is done with the lsa::textmatrix and lsa::lsa. The O/S was Windows 10 pro version 10.0.17763 Build 17763 running on an AMD FX-8320E eight-core processor with 16 gigabytes of RAM.




