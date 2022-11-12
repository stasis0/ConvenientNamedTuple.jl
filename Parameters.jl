module ConvenientNamedTuple

macro ConvenientNamedTuple(expr)
    local_variables = eval(:(
        let 
            $expr
            Base.@locals
        end
    ))

   return (; local_variables...)
end

end