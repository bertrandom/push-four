#!/bin/bash
cd "$(dirname "$0")"
curl "http://flipdisc.smittn.com/update/$(shuf -n 1 four_letter_words.txt | tr -d '\n')"
