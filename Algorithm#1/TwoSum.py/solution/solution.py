from typing import List


class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        his = {}

        for i in range(len(nums)):
            comp = (target - nums[i])
            if comp in his:
                return [his[comp], i]

            his[nums[i]] = i

        return []