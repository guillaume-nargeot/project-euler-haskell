module TestProblems (testProblems) where

import ProjectEuler.Problem001
import ProjectEuler.Problem002
import ProjectEuler.Problem004
import ProjectEuler.Problem008
import ProjectEuler.Problem009
import ProjectEuler.Problem010
import ProjectEuler.Problem012
import ProjectEuler.Problem014
import ProjectEuler.Problem021
import ProjectEuler.Problem024
import ProjectEuler.Problem025
import ProjectEuler.Problem031
import ProjectEuler.Problem033
import ProjectEuler.Problem034
import ProjectEuler.Problem036
import ProjectEuler.Problem038
import ProjectEuler.Problem041
import ProjectEuler.Problem043
import ProjectEuler.Problem052
import ProjectEuler.Problem055
import ProjectEuler.Problem057
import ProjectEuler.Problem064
import ProjectEuler.Problem065
import ProjectEuler.Problem070
import ProjectEuler.Problem071
import ProjectEuler.Problem072
import ProjectEuler.Problem073
import ProjectEuler.Problem074
import ProjectEuler.Problem076
import ProjectEuler.Problem077
import ProjectEuler.Problem085
import ProjectEuler.Problem092
import ProjectEuler.Problem093
import ProjectEuler.Problem122
import ProjectEuler.Problem203
import ProjectEuler.Problem204
import ProjectEuler.Problem214
import ProjectEuler.Problem225
import Test.HUnit
import Util

testProblems :: Test
testProblems = "Problems" ~: fmap testProblem [
    (solution001, 233168),
    (solution002, 4613732),
    (solution004, 906609),
    (solution008, 40824),
    (solution009, 31875000),
    (solution010, 142913828922),
    (solution012, 76576500),
    (solution014, 837799),
    (solution021, 31626),
    (solution024, 2783915460),
    (solution025, 4782),
    (solution031, 73682),
    (solution033, 100),
    (solution034, 40730),
    (solution036, 872187),
    (solution038, 932718654),
    (solution041, 7652413),
    (solution043, 16695334890),
    (solution052, 142857),
    (solution055, 249),
    (solution057, 153),
    (solution064, 1322),
    (solution065, 272),
    (genericSolution070 100000, 75841),
    -- solution070 ~=? 8319823, -- slow
    (solution071, 428570),
    (solution072, 303963552391),
    (solution073, 7295372),
    (solution074, 402),
    (solution076, 190569291),
    (solution077, 71),
    (solution085, 2772),
    (genericSolution092 100000, 85623),
    -- solution092 ~=? 8581146, -- slow
    (solution093, 1258),
    (solution122, 1582),
    (solution203, 34029210557338),
    (solution204, 2944730),
    (solution214, 1677366278943),
    (solution225, 2009)]

testProblem :: (Show a, Eq a) => (a, a) -> IO Assertion
testProblem (actual, expected) = return $ time actual >>= (@=? expected) 
