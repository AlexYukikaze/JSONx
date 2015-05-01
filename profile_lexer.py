__author__ = 'Alex'

import JSONxLexer.lexer as lexer


def test_speed():
    import glob
    for xc in glob.glob("./Test/config/default/*.xc"):
        stream = open(xc)
        source = stream.read().decode('utf-8-sig')
        stream.close()
        tokens = lexer.tokenize(source)
        # print xc, len(tokens)

import cProfile, pstats, StringIO
pr = cProfile.Profile()
pr.enable()
test_speed()
pr.disable()
s = StringIO.StringIO()
sortby = 'cumulative'
ps = pstats.Stats(pr, stream=s).sort_stats(sortby)
ps.print_stats()
print s.getvalue()