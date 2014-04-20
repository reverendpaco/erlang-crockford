-module(crockford32).

-export([encode/1,
         encode_to_string/1,
         decode/1,
         decode_to_string/1,
         encode_and_group/2,
         encode_integer/1
        ]).

%% 48..57 = 0..9
%% 65..72 = A-H 
%% 'I' or 73 is excluded
%% 74..75 = J..K
%% 'L' or 76 is excluded
%% etc.
%% see:  http://www.crockford.com/wrmg/base32.html
-type crockford_characters() :: 48..57 | 65..72 | 74..75 
                              | 77..78 | 80..84 | 86..90.
-type crockford_string() :: [ crockford_characters() ].

%% 45 = '-'  which is OUR addition to crockford.. it is ignored by
%% the decoder, and produced as a visual grouping delimiter
-type grouped_crockford_string() :: [ crockford_characters() | 45 ]. 

-spec encode_integer(non_neg_integer())->
                            crockford_string().
encode_integer(Data) ->
    ok.

encode(Data) ->
    ok.

decode(Data) ->
    ok.
-spec encode_to_string(any()) ->
                              crockford_string().
encode_to_string(Data)->
    ok.

decode_to_string(Data) ->
    ok.
-spec encode_and_group(any(),pos_integer()) ->
                              grouped_crockford_string().
encode_and_group(Data,GroupSize)->
    ok.
