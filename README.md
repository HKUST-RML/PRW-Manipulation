# PRW-Manipulation
Passive Dynamic Object Locomotion by Rocking and Walking Manipulation

## Usage

- First execute `vector_fields.m` in `MATLAB` with dimensions of oblique cone of choice. This will generate three `.mat` files, namely, `vector_field_pos.mat`, `vector_field_neg.mat` and `params.mat`. The former two store the annular vector fields while the latter stores the associated parameters. These three files will be used by `integral_curves_concatenate.m` in the next step. `vector_fields.m` will also output a figure showing an annulus filled with (positive) vector field and an example streamline. The streamline denotes the path of the ground contact point on the base rim of the cone. The following image outlines the concept.


![](https://github.com/nazir-ust/PRW-Manipulation/blob/master/media/vector_field.png)

- Then run `integral_curves_concatenate.m`. This script outputs (`lr_rocking.mat`) a sequence of oblique cone's apex positions (correspondingly, the end-effector positions of a robot manipulator attached to the cone's apex) separated into two columns corresponding to left and right rocking. If these sequence of waypoints are followed, a net straight line displacement of the cone is obtained through alternate rocking. In this script, total number of rocking steps (`total_rocking_steps`) and `rocking_angle` may be altered. A large value of `rocking_angle` means that the end-effector moves large displacement and can potentially make the system (robot+object_cone) unstable. A small value, on the other hand, would result in a small net forward displacement per rocking step. The following figure outlines the concatenation process.


<img src="https://github.com/nazir-ust/PRW-Manipulation/blob/master/media/concatenation.png" width="450" height="450">

## Deomonstration
To see how the parameters are defined and a demo of our manipulation task, please take a look at the following video.


<a href="https://drive.google.com/file/d/1rxQy9nd6O5Jt5PxMQcQ-WqnGz0_dPL5v/view?usp=sharing"><img src="https://lh3.googleusercontent.com/JyIFBdyEsLwuUKHb34dDD-foJIwI7LqDNZKWyLc3v3hIBc8cDJgNKG69RNoBT-YgAy2B17KGmxvFPj5poUxd=w1280-h720-n-k-rw" style="width: 1280px; max-width: 50%; height: auto"/>
</a>
