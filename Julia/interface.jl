####################################

macro toimplement(args)
    ex = QuoteNode(args)
    return :($ex = error("This function is not implemented for this trait type"()
end

@toimplement getparameters(:: AbstractTrait)

@toimplement tunetrait(:: AbstractTrait)