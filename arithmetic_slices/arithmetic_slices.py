class Solution(object):
  def numberOfArithmeticSlices(self, A):
		slices = 0
		i = 0
		while (i < len(A) - 1):
			j = i + 1
			diff = A[j] - A[i]
			while (j < len(A) and (A[j] - A[j - 1]) == diff):
				if (j > i + 1):
					slices += 1
				j += 1
			i += 1
		return slices
		

