open Core;;

open Physics;;
open Pregex;;
open Tower;;
(* open Vs *)
open Differentiation;;
open TikZ;;
open Utils;;
open Type;;
open Program;;
open Enumeration;;
open Task;;
open Grammar;;
open Task;;
open FastType;;
open Yojson.Basic;;

let s = "{\"DSL\": {\"logVariable\": 0.0, \"productions\": [{\"expression\": \"mathDomain_add\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_sub\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_mult\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_div\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_rrotate\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_lrotate\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_simplify\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_dist\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_revdist\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_swap\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_addzero\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_subzero\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_multone\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_divone\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_newConstGen\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_0\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_1\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_2\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_3\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_4\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_5\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_6\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_7\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_8\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_9\", \"logProbability\": 0.0}, {\"expression\": \"mathDomain_10\", \"logProbability\": 0.0}, {\"expression\": \"#(lambda (mathDomain_simplify $0 mathDomain_0))\", \"logProbability\": 0}, {\"expression\": \"#(lambda (#(lambda (mathDomain_simplify $0 mathDomain_0)) (mathDomain_rrotate (mathDomain_sub (#(lambda (mathDomain_simplify $0 mathDomain_0)) $0) mathDomain_3) mathDomain_1)))\", \"logProbability\": 0}, {\"expression\": \"#(lambda (mathDomain_swap (#(lambda (mathDomain_simplify $0 mathDomain_0)) $0) mathDomain_0))\", \"logProbability\": 0}, {\"expression\": \"#(lambda (#(lambda (mathDomain_simplify $0 mathDomain_0)) (mathDomain_dist $0 mathDomain_1)))\", \"logProbability\": 0}, {\"expression\": \"#(lambda (#(lambda (mathDomain_simplify $0 mathDomain_0)) (mathDomain_rrotate $0 mathDomain_4)))\", \"logProbability\": 0}, {\"expression\": \"#(lambda (#(lambda (#(lambda (mathDomain_simplify $0 mathDomain_0)) (mathDomain_rrotate $0 mathDomain_4))) (mathDomain_mult $0 mathDomain_4)))\", \"logProbability\": 0}, {\"expression\": \"#(lambda (#(lambda (mathDomain_swap (#(lambda (mathDomain_simplify $0 mathDomain_0)) $0) mathDomain_0)) (#(lambda (#(lambda (#(lambda (mathDomain_simplify $0 mathDomain_0)) (mathDomain_rrotate $0 mathDomain_4))) (mathDomain_mult $0 mathDomain_4))) (#(lambda (mathDomain_swap (#(lambda (mathDomain_simplify $0 mathDomain_0)) $0) mathDomain_0)) (mathDomain_swap $0 mathDomain_1)))))\", \"logProbability\": 0}, {\"expression\": \"#(lambda (#(lambda (#(lambda (mathDomain_simplify $0 mathDomain_0)) (mathDomain_dist $0 mathDomain_1))) (#(lambda (mathDomain_swap (#(lambda (mathDomain_simplify $0 mathDomain_0)) $0) mathDomain_0)) $0)))\", \"logProbability\": 0}]}}" in
  let j = Yojson.Basic.from_string s in
    let g = j |> Yojson.Basic.Util.member "DSL" in
        deserialize_grammar g |> make_dummy_contextual
;; 