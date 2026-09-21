# Robotic Arm Controller Design — MATLAB and Simulink

Modelling and control analysis of a robotic arm using state-space methods. The repository brings together nonlinear equations, linearisation, controllability and observability checks, state-feedback design and observer analysis.

The work is a simulation-based control study using MATLAB scripts and Simulink models. It does not contain microcontroller firmware or document a complete physical robot installation.

## Control workflow

- Formulate the dynamics and investigate operating points.
- Calculate a linear state-space representation using symbolic derivatives.
- Examine open-loop stability, controllability and observability.
- Calculate state-feedback gains through pole placement.
- Construct observer gains and examine error dynamics.
- Explore system responses in MATLAB and Simulink.

## Repository guide

| File | Purpose |
|---|---|
| `Opp.m` | Operating-point and linearisation calculations |
| `Linearization.m` | Symbolic Jacobian and linear-system response |
| `Controlib.m` | Controllability matrix and rank |
| `Observ.m` | Observability matrix and rank |
| `Stabili.m` | Eigenvalue-based stability exploration |
| `Poleplace.m` | State-feedback pole placement |
| `Stateobserv.m` | Observer pole placement and error dynamics |
| `lyaptesting.m` | Lyapunov-equation calculations |
| `system_simulation.slx` | System simulation model |
| `system_linearisation.slx` | Linearisation model |
| `system_using_controller_design.slx` | Controller-design simulation |
| `Feedback.slx` and `poles.slx` | Related feedback and pole-placement models |

Additional models preserve intermediate experiments. The included `.fig` file and response PDF provide material for inspecting the original analysis. `.slxc` files are generated Simulink caches.

## Software and execution

Use MATLAB and Simulink. The scripts also use functions from Symbolic Math Toolbox, Control System Toolbox and System Identification Toolbox (`idss`).

Set this repository as the MATLAB working folder. Read the state-space definitions and model parameters before running individual analyses. Some scripts share workspace variables: `Poleplace.m` requires `A` and `B`; `Stateobserv.m` requires `A`, `C` and the observer-pole inputs from preceding calculations. Initialise these consistently before opening dependent models.

The archive does not record a MATLAB release or include a single automated launch sequence. Start with the relevant script/model rather than assuming every file is independent.

## Interpreting the study

Controller behaviour depends on the operating point, state definitions, physical assumptions and selected poles. Simulation responses should be interpreted within that model; they do not establish hardware validation or guaranteed stability across all operating conditions.
