package solution;

import org.junit.Assert;
import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;

public class SolutionTest {
    @Test
    public void testSolution() {
        var solution = new Solution();

        var nums = new int[]{1, 2, 3, 4};
        var target = 7;
        var result = new int[]{2, 3};

        assertArrayEquals(result, solution.twoSum(nums, target));
    }
}
