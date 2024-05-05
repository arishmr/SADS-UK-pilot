## SADS-UK-pilot
Pilot study of the utility of the South African Depression Scale (SADS) for measuring depressive symptoms in a UK sample

This code repository contains code used for analysis for a sub-study of the INSIDE-HIV study, carried out at Brighton & Sussex Medical School (BSMS), University of Sussex, Brighton, UK. The objective of this pilot sub-study was to assess the psychometric performance of the recently-developed South African Depression Scale (SADS) in a UK sample.

The associated dataset for this study is available publicly at <LINK TBD>

For any questions about the code or dataset, please contact the lead investigator: Arish Mudra Rakshasa-Loots (arish.mudrarakshasa@ed.ac.uk).


## SCRIPTS

Data analysis is carried out using the following scripts:

Section 1: Preamble
Always run these when opening the project
1-packages					Load (and install, if not already installed) the required packages for analysis
2-load-data					Load the dataset (which can be downloaded from the DOI provided above)

Section 2: Demographics
3-demos						Summarise participant characteristics overall and by depression group

Section 3: Psychometric analysis
4-convergent					Calculate internal consistency of the SADS and convergent validity of the SADS with the PHQ-9 + plot total score correlations
5-item-level					Plot distributions of item-level scores + carry out item-level analysis of the SADS


## NOTES

- My code is set up so that the 1-packages and 2-load-data scripts need to be run once each time when the project is opened, but not necessarily again.
- I export figures and results files to a /Figures and /Results sub-folder within my working directory, respectively. 



## VARIABLES

PID       Participant ID

Group			Participant group (high or low depression severity)

PHQ			Total PHQ-9 score (calculated as sum of PHQ1:PHQ9)

SADS			Total SADS score (calculated as sum of SADS01:SADS16)


age			Participant age in years

sex			Self-identified sex

gender			Self-identified gender (multiple selections possible)

sexual.orient		Self-identified sexual orientation (multiple selections possible)

ethnicity		Self-identified ethnicity (multiple selections possible)

smoking			Have you smoked cigarettes in the past 3 months?

alcohol			Have you drank alcohol in the past 3 months?

recdrugs		Have you used any recreational drugs in the past 3 months?

curr.antidep		Are you currently taking antidepressant medication?

ever.antidep		Have you ever taken antidepressant medication, now or in the past?

curr.therapy		Are you currently in therapy or counselling for depression?

ever.therapy		Have you ever been in therapy or counselling for depression, now or in the past?

ViralLoad		Latest documented HIV RNA viral load

CD4			Latest document absolute CD4 cell count


PHQ1:PHQ9		Items on the PHQ-9 (asking about frequency IN THE PAST TWO WEEKS)

PHQ1			Little interest or pleasure in doing things

PHQ2			Feeling down, depressed, or hopeless

PHQ3			Trouble falling or staying asleep, or sleeping too much

PHQ4			Feeling tired or having little energy

PHQ5			Poor appetite or overeating

PHQ6			Feeling bad about yourself

PHQ7			Trouble concentrating on things

PHQ8			Moving or speaking so slowly that other people could have noticed? Or the opposite

PHQ9			Thoughts that you would be better off dead or of hurting yourself in some way

PHQ9_bonus		How difficult have these problems made it for you


SADS01:SADS16		Items on the SADS (asking about frequency IN THE PAST WEEK)

SADS01			Things were not going well in my life

SADS02			I had difficulties sleeping

SADS03			I was thinking too much

SADS04			I did not want to be around people

SADS05			I was feeling tired or without energy

SADS06			I was not my usual self

SADS07			I was carrying a lot of weight on my shoulders

SADS08			I had stress

SADS09			I did not feel like talking

SADS10			I had pain in my heart

SADS11			I cried

SADS12			I was irritated easily

SADS13			I was sad

SADS14			I had no appetite or I ate more than usual

SADS15			I was not interested in the things I used to like doing

SADS16			I had deep sorrow

SADS_bonus		When did you start feeling this way?

