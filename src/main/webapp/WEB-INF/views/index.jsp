<html>
	<head>
		<link rel="stylesheet" href="resources/css/bootstrap.css">
	</head>
	<body>
		<div class="container">	
		<h1>Introduction to Algorithms</h1>
		<a href="/algorithms/list">Home</a>
			<div class="mt-4 row">
				<div class="col-md-8">
					<ul>
						<li>1.2-2 Suppose we are comparing implementations of insertion sort and merge sort on the same machine. 
							For inputs of size n, insertion sort runs in 8n2 steps, while merge sort runs in 64nlgn steps.
							For which values of n does insertion sort beat merge sort?
								<div class="mt-2 mark"><pre>
public String question_1Dot2dash2() {
	int i = 2; // log(1) = 0 hence we start from 2
	while(i > 0) {
		// Steps to sort n inputs: insertion sort - 8n*n
		// Steps to sort n inputs: merge sort - 64nlgn (log to base 2)
		if((8 * i * i) > (64 * i * (Math.log(i)/Math.log(2)))) {
			return "Insertion sort beats merge sort at: " + i;
		} else {
			i++;
		}
	}
	return null;
}
								</pre></div>
						<a href="/algorithms/question_1Dot2dash2">Click to run</a>
						<label>${answer}</label>
						</li>
						
						<li class="mt-4">For each function f(n) and time t in the following table, 
										 determine the largest size n of a problem that can be solved in time t,
										 assuming that the algorithm to solve the problem takes f(n) microseconds.
							<div class="mt-2 mark">
								<pre>
First recall that a microsecond is 10 power -6 seconds. 
Hence, one second = 10 power 6 microseconds.

Now, if we have an algorithm that runs in f(n) steps given an input of size n
for example, f(899) <= 10 power 6 that means that inputs of size 899 
can be processed in less than one second.

This problem asks us to find the input of largest size that can be processed 
in one second, one hour, etc given different running times f(n).
 
That is, to determine the largest problem that can be done in one second,
for example, we have to determine the largest n such that f(n) <= 10 power 6

so for log(n) we have log(n) <= 10 power 6 and calculate for n
we have n = 10 power 3000000

https://udel.edu/~caviness/Class/CISC320-02S/exercise-solns/ch01/R-1.7.pdf

</pre>
							</div>
						</li>
						
						<li class="mt-4">Insertion Sort
								<div class="mt-2 mark"><pre>
public int[] insertionSort() {
	int numbers[] = {31,41,59,26,41,58};
	for(int i = 1; i < numbers.length; i++) {
		int key = numbers[i];
		int j = i - 1;
		// Check if key is less than earlier no.
		while(j >= 0 && key < numbers[j]) {
			numbers[j + 1] = numbers[j];
			j = j - 1;
		}
		numbers[j + 1] = key;
	}
	return numbers;
}
								</pre></div>
						<a href="/algorithms/insertionSort">Click to sort: 31,41,59,26,41,58  -> </a>
						<label>${sorted}</label>
						</li>
						
						<li class="mt-4">2.1-2 Use INSERTION SORT in non increasing order
								<div class="mt-2 mark"><pre>
public int[] question_2Dot1dash2() {
	int numbers[] = {31,41,59,26,41,58};
	for(int i = 1; i < numbers.length; i++) {
		int key = numbers[i];
		int j = i - 1;
		// Check if key is greater than earlier no.
		while(j >= 0 && key > numbers[j]) {
			numbers[j + 1] = numbers[j];
			j = j - 1;
		}
		numbers[j + 1] = key;
	}
	return numbers;
}
								</pre></div>
						<a href="/algorithms/question_2Dot1dash2">Click to sort: 31,41,59,26,41,58  -> </a>
						<label>${descSorted}</label>
						</li>
						
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>