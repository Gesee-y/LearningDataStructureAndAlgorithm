####################################

"""
    abstract type AbstractTrait

This is the super type of all traits.
Traits are just structs deriving from this type and overloading the [interface](@ref)
"""
abstract type AbstractTrait end

"""
mutable struct Tuner
    traits::Vector{AbstractTrait}

This struct is the main object.
After generating traits through some process we group them in this struct that will be processed.
"""
mutable struct Tuner
    traits::Vector{AbstractTrait}
    # This should contain more data about tuning. it depends on how we will do this 
end

# TODO : Add more things 

