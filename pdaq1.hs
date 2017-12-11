-- Mimic a PDA (Push Down Automaton) Program
-- Involves Stacks.

-- (Start_State, Accepting_States, Transitions)
type PDA = (Int, [Int], [Transition])
-- ( (CurrentState, nextInputCharacter, characterAtTopStack), (newState, newChartoPush) )
type Transition = ((Int, String, String), (Int, String))
-- (currentState, remainingInput, stackContents)
type Configuration = (Int, String, String)
-- Accepted or Rejected.
data Result = Accept | Reject deriving (Show, Eq)
-- Implement this yourself:

run :: PDA -> String -> Result
run pda input = let config = ((getStartState pda), input,  "")
                in if (checkForAcceptingConfig config (getAcceptingStates pda))
                   then Accept
                   else let transitions = findPossibleTransitions pda config
                            newConfigurations = applyTransitions config transitions
                            in if (testForAcceptance pda newConfigurations) then Accept
                               else run' pda newConfigurations -- Starting configuration

run' :: PDA -> [Configuration] -> Result
run' pda configs = if (testForAcceptance pda configs)
                   then Accept
                   else generate pda configs -- [(length new, "", "")]--generate pda configs
                      --if (length configs == 0) then [(0, "", "")]
                      --else generate pda configs--generate pda configs
                           -- List of new Configurations
                           -- Go through the list, check if any of these are accepting
                           -- Otherwise, generate valid transitions for these configs
                           
generate :: PDA -> [Configuration] -> Result
generate pda [] = Reject
generate pda configs  = let newAcceptableConfigs = (concat (gen pda configs))
                        in run' pda newAcceptableConfigs

gen :: PDA -> [Configuration] -> [[Configuration]]
gen _ [] = []
gen pda (h:t) = let newTrans = findPossibleTransitions pda h
                    newConfigs = applyTransitions h newTrans
                    in newConfigs:gen pda t

testForAcceptance :: PDA -> [Configuration] -> Bool
testForAcceptance pda [] = False
testForAcceptance pda@(_, acceptS, _) (h@(state, input, stack):t)
    | (elem state acceptS && input == "" && stack == "") = True
    | (otherwise) = testForAcceptance pda t

merge xs ys = concatMap (\(x,y) -> [x,y]) (zip xs ys)

applyTransitions :: Configuration -> [Transition] -> [Configuration]
applyTransitions (_, _, _) [] = []   
applyTransitions config@(currs, remainInp, stack) (h@(((_,letter,otherS), (newState, pushLetter))):t)
    | ((take 1 remainInp) == letter && (take 1 otherS /= "") && (pushLetter == "")) = (newState, (drop 1 remainInp), drop 1 stack):applyTransitions config t
    | ((take 1 remainInp) == letter) = (newState, (drop 1 remainInp), pushLetter ++ stack):applyTransitions config t
    | (otherwise) = (newState, remainInp, pushLetter ++ stack):applyTransitions config t

findPossibleTransitions :: PDA -> Configuration -> [Transition]
findPossibleTransitions pda@(_,_, []) config = []
findPossibleTransitions pda@(currS, acceptS, (h:t)) config
    | (getTransState config h) = h:findPossibleTransitions (currS, acceptS, t) config
    | (otherwise) = findPossibleTransitions (currS, acceptS, t) config

getTransState :: Configuration -> Transition -> Bool
getTransState (configState, input, currStack) ((state, letter, stackItem), (_, _))
    | (configState == state  && (letter == "" || letter == take 1 input) && (stackItem == take 1 currStack || stackItem == "")) = True
    | (otherwise) = False

getStartState :: PDA -> Int
getStartState (startS, _, _) = startS

getAcceptingStates :: PDA -> [Int]
getAcceptingStates (_, acceptS, _) = acceptS

checkForAcceptingConfig :: Configuration -> [Int] -> Bool
checkForAcceptingConfig (currS, input, stack) acceptS
    | (elem currS acceptS && input == "" && stack == "") = True
    | (otherwise) = False

pal = (1,[2],[((1,"a",""),(1,"a")),
              ((1,"b",""),(1,"b")),
              ((1,"a",""),(2,"")),
              ((1,"b",""),(2,"")),
              ((1,"",""),(2,"")),
              ((2,"a","a"),(2,"")),
              ((2,"b","b"),(2,""))])

testrun :: Result
testrun = run pal "abbabaababba"

--testgen :: [[Configuration]]
--testgen = gen pal [(1,"ba","a"),(2,"ba",""),(2,"aba","")] 
