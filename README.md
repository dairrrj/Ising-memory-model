# Ising-memory-model
using Ising model simulate memory process.
## Key features 
* An Ising spin is used to model the on/off behavior of a neural.The firing rate of a neuron is assumed to have only two possible states,corresponding to the spin values s=±1.
* The connections between the spins Ji,j are not limited to nearest neighbors,but link all pairs of spins in the network.
* Given a collection of patterns that we want to store,the Ji,j are calculated according to
                             Ji,j= si (m)sj (m)
* The network operates as a content addressable memory.The lattice of neurons(that is,spins)is initialized with a configuration that resembles the pattern we want to recall.The Monte Carlo rules for T=0 are than used, and the system evolves to a pattern that is at a minima in the energy landscape.This is the pattern that is “recalled” by the network.
