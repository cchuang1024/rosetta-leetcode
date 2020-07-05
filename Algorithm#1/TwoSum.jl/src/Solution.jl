function solution(nums::Array<Int32>, target::Int32)::Array<Int32>
    hist = Dict()

    for i = 1:length(nums)
        comp = target - nums[i]

        if get(hist, comp, -99) != -99
            return Array<Int32>([hist[comp], i])
        end

        hist[comp] = i
    end
end
