use std::collections::HashMap;

struct Solution {}

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut his: HashMap<i32, i32> = HashMap::new();

        for (i, n) in nums.iter().enumerate() {
            let comp = target - *n;

            if his.contains_key(&comp) {
                return vec![*his.get(&comp).unwrap(), i as i32];
            }

            his.insert(*n, i as i32);
        }
        return vec![];
    }
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test_solution() {
        let nums = vec![1, 2, 3, 4];
        let target = 7;
        let result = vec![2, 3];

        assert_eq!(Solution::two_sum(nums, target), result);
    }
}

fn main() {
    println!("Hello, world!");
}
