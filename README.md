# NewRobotFrameworkProject
Running overall project by specific file
robot -d results tests/SampleEcommerce.robot

Running test by tags
robot -d results -i [tags] tests

Running with inclutsions
robot -d [path of result]--include [test suite you want] tests/[your test script]


Running from command line
go to path in cmd
and type the command
e.g robot -d results tests/SampleEcommerce.robot

Running with variables
Make sure you have variables indicated in your browser
you can use mulitiple -v
robot -d results -v VariableName tests/Directory
