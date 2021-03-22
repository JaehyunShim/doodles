# Study Wheeled (Crappy...)

## 1. Terminology

## 2. Lecture
- Week0 (Introduction)
  - Lecture
    ```sh
    - Provide an overview of problems and approches in mobile robotics
    - Probabilistic reasoning: Dealing with noisy data
    - Tasks: Navigation, Perception, Learning, ...
    ```

- Week1 (Linear Algebra)
  - Lecture
    ```sh
    - vectors
      - scalar product
      - sum
      - dot product
      - linear (in)dependence
    - Matricies
      - collections of column vectors
      - collections of rows vectors
      - Operations
        - multiplication by a scalar
        - sum
        - multiplication by a vector
        - product
        - inversion
          - rank
          - gaussian elimination
          - determinant
          - cofactor expansion
          - gaussian elimination
        - transposition
          - orthogonal matrix
    - Transformation
      - Affine Transformation
      - Combining Transformation
      - Positive Definite Matrix
        - invertible
        - eigenvalues > 0
        - trace > 0
        - cholesky decomposition A = LL^T
    - Linear Systems
      - gaussian elimination
      - over-constrained system
      - under-constrained system
      - Jacobian matrix
    ```

- Week2 (Robot Control Paradigms)
  - Lecture
    ```sh
    - Classical / Hierarchical Paradigm
      - Sense -> Plan -> Act -> Sense -> ...
    - Reactive / Behaviour-based Paradigm
      - Sense <-> Act
      - Characteristics
        - Situated agent, robot is integral part of its environment
        - No memory, controlled by what is happening in the world
        - Tight coupling between perception and action via behaviours
        - Only local, behaviour-specific sensing is permitted
      - Subsumption Architecture
      - Potential Field Methods
        - Uniform , Perpendicular, Attractive, Repulsive, Tangential
        - Chaeracteristics
          - Suffer from local minima
          - To escape local minima: backtracking, random motion, procedural planner, ...
          - No preference among layers
          - easy to visualize
          - easy to combine different fields
          - high update rates necessary
          - parameter tuning important
    - Hybrid Deliberative / Reactaive Paradigm
      - Sense <-> Act
               |
              Plan
      - example: plan part is global planning, sensing <-> act part is local planning
    ```

- Week3 (Wheeled Locomotion)
  - Lecture
    ```sh
    - Locomotion of Wheeled Robots
      - differential drive
      - car drive
      - synchronous drive
      - xr4000
      - mecanum wheels
    - Instantaneous Center of Curvature
      - For rolling motion to occur, each wheel has to move along its y-axis
    - Forward and Inverse Kinematics for different locomotion types
    - Holonomic
      - synchro-drive
      - differential drive
      - ackermann drive
    - Non-Holonomic
      - mecanum wheels
    - Dead Reckoning and Odometry
    ```

- Week4 (Proximity Sensors)
  - Lecture
    ```sh
    - Active: Ultrasound, Laser range finder, Infrared
    - Passive: Cameras, Tactiles
    ```

- Week5 (Probabilistic Robotics)
  - Lecture
    ```sh
    - Probability Theory
      - Discrete
        - probability mass function
      - Continuous
        - probability density function
      - Joint and Conditional Probability
      - Total Probability
      - Marginaliziation
      - Bayes Formula
        - allows to compute probabilities that are hard to assess otherwise
      - Normalization
      - Conditional Independence
    - State Estimation
      - Casual vs Diagnostic Reasoning
      - Modeling P(z|x)
    - Recursive Bayesian Updating
      - Markov assumption
    - Action
      - Modeling P(x|u,x_prev)
      - Integrating the outcome of actions
      - Resulting belief
    - Bayes Filters
      - Given
        - stream of observations and action
        - sensor model
        - action model
        - prior probability of the system state
      - Wanted
        - Estimate of the state x of a dynamical system
        - Belief: posterior of the state
          - Bel(x_t) = P(x_t|u1, z1, ..., u_t, z_t)
      - Algorithm Implementation...
      - Used for Probabilistic Localization
    ```

- Week6 (Probabilistic Motion Models)
  - Lecture
    ```sh
    - Odometery-based
      - equipped with wheel encoders
    - Velocity-based (dead reckoning)
      - no wheel encoders
      - calc new pose based on velocities and elapsed time.
      - dead reckoning
    - Odometry Model
      - Noise Model for Odometry model
      - Calculate the posterior given x, x_prime and odometry
      - Sample from a normal distribution
      - Sample odometry motion model
    - Velocity-Based Model
      - Noise Model for Velocity-Based model
      - Posterior probability for velocity model
      - Sample from velocity model
    - Map-Consistent Motion model
    ```

- Week7 (Probabilistic Sensor Models)
  - Lecture
    ```sh
    - Sensors for Mobile Robots
    - Beam-based Sensor Model
      - unexpected measurement error
      - noise
      - Beam-based proximity model
      - assumes indenpendence between beams
    - Scan-based Model
      - Scan matching
    - Landmarks
    - Vision-based model
    ```

- Week8 (Bayes Filter - Discrete Filters)
  - Lecture
    ```sh
    - Alternative way for implementing Bayes Filters
    - Discretize the continuous state space
    - High memory complexity
    - Fixed resolution
    ```

- Week9 (Bayes Filter - Particle Filter and Monte Carlo Localization)
  - Lecture
    ```sh
    - Efficiently represent non-Gaussian distribution
    - Randomly insert a fixed number of samples with randomly chosen poses
    - implementation of recursive Bayesian filtering
    - represent the posterior by a set of weighted samples
    ```

- Week10 (Bayes Filter - Kalman Filter)
  - Lecture
    ```sh
    - Bayes filter with Gaussians
    - Optimal for linear Gaussian systems
    - Can only model unimodal beliefs
    - Prediction -> Correction with measurements -> Prediction -> ...
    ```

- Week11 (Bayes Filter - Extended Kalman Filter)
  - Lecture
    ```sh
    - Non-linear functions lead to non-Gaussian distributions -> EKF
    - Performs local linearization in each step
    - Better ways exist, e.g., UKF
    ```

- Week12 (Grid Maps and Mapping With Known Poses)
  - Lecture
    ```sh
    - Grid maps - popular model for representing the environment
    - Occupancy grid maps discretize the space into independent cells
    - Each cell is a binary random variable extimating if the cell is occupied
    - Estimate the state of every cell using a binary Bayes filter
    - Leads to an efficient algorithm for mapping with known poses
    - log odds model is fast to compute
    - Reflection probability maps are an alternative representation
    - Sensor model - calculate for every cell the probability that it reflects a sensor beam
    - Count the number of times how often a measurement intercepts or ends in a cell yields the maximum likelihood model
    - consistent sensor model for mapping and localization
    ```

- Week13 (SLAM - Simultaneous Localization and Mapping)
  - Lecture
    ```sh
    - Full SLAM vs Online SLAM
    - Loop Closure
    - EKF SLAM
      - First SLAM solution
      - Convergence proof for linear Gaussian case
      - Can diverge if nonlinearities are large
      - Can deal only with a single mode
      - Successful in medium scale scenes
      - Approximations exists to reduce the computational complexity
    ```

- Week14 (SLAM - Landmark-based FastSLAM)
  - Lecture
    ```sh
    - FastSLAM factors the SLAM posterior into low-dimensional estimation problem
    - FastSLAM factors robot pose uncertainty out of the data association problem
    - Advantages compaared to the classical EKF approach
    - Complexity lowered to O(N log M)
    ```

- Week15 (SLAM - Landmark-based FastSLAM)
  - Lecture
    ```sh
    - FastSLAM applied in the context of grid maps
    ```

- Week16 (SLAM - Graph-based FastSLAM)
  - Lecture
    ```sh
    - Build the graph and find aa node configuration that minimize the error introduced by the constraints
    - Gauss-Newton error minimization
    ```

- Week17 (Techniques for 3D Mapping)
  - Lecture
    ```sh
    - Popular Representations
      - Point clouds
      - Voxel grids
      - Surface maps
      - Meshes
    ```
- Week18 (Iterative Closest Point Algorithm)
  - Lecture
    ```sh
    - ICP - powerful algorithm for calculating the displacement between scans
    - Major problem: determine the correct data associations
    - Convergence speed depends on point matched points
    - can be computed efficiently using SVD (singular value decomposition)
    - ICP does not necessarily converge
    ```

- Week19 (Iterative Closest Point Algorithm)
  - Lecture
    ```sh
    - Goal
      - Collision-free trajectories
      - Reach the goal location as quickly as possible
    - Dynamic Window Approach
    - A*
    ```

- Week20 (Multi-Robot Exploration)
  - Lecture
    ```sh
    - Efficient coordination leads to reduced exploration times
    ```

- Week21 (Information Driven Exploration)
  - Lecture
    ```sh
    - decision-theoretic approach to exploration in the context of RBPF-SLAM
    ```

## 3. Navigation2
- Global Path Planning
  ```sh
  - Uninformed Search
    - DFS (Depth First Search)
    - BFS (Breadth First Search)
  - Informed Search
    - Dijkstra
      - BFS with a priority queue
      - Greedy alogrithm
    - A*
      - BFS with a priority queue + heuristic
      - if heuristic is 0, same as dijkstra
    - IDA*
      - Memory constrained A*
    - LPA*
    - D*
      - Dynamic A* Search
      - Arc cost parameters can change during the problem solving process->replanning online
    - D* Lite
      - LPA* + D*
  ```


## 4. Reference
- [Introduction to Mobile Robotics](http://ais.informatik.uni-freiburg.de/teaching/ss20/robotics/)
- [Robotic Motion Planning: A* and D* Search](https://www.cs.cmu.edu/~motionplanning/lecture/AppH-astar-dstar_howie.pdf)
