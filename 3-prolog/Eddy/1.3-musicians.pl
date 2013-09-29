
instrument_type(organ, keyboard).
instrument_type(piano, keyboard).
instrument_type(harpsichord, keyboard).
instrument_type(violin, string).
instrument_type(guitar, string).

instrument(bach, organ).
instrument(vivaldi, violin).
instrument(beethoven, piano).
instrument(yanni, piano).
instrument(hetfield, guitar).
instrument(pachelbel, organ).
instrument(handel, harpsichord).

genre(bach, baroque).
genre(mozart, classical).
genre(beethoven, romantic).
genre(yanni, modern).
genre(vivaldi, baroque).
genre(pachelbel, baroque).
genre(handel, baroque).
genre(hetfield, metal).

%% Satisfies exercise 1.4
plays_instrument(X, Y) :- instrument(X, Y).