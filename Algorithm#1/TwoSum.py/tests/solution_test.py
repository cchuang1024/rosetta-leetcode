from solution.solution import Solution


def test_solution():
    sol = Solution()

    nums = [1, 2, 3, 4]
    target = 7
    result = [2, 3]

    assert result == sol.twoSum(nums, target)
