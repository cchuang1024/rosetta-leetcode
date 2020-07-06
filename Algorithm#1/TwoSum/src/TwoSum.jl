module TwoSum

function solution(nums::Array{Int64,1}, target::Int64)::Array{Int64,1}
    hist = Dict()

    for i in eachindex(nums)
        comp = target - nums[i]

        if haskey(hist, comp)
            return [get(hist, comp, 0), i]
        end

        hist[comp] = i
    end

    return []
end

end
