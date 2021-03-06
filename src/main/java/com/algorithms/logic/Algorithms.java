package com.algorithms.logic;

import org.springframework.stereotype.Component;

@Component
public class Algorithms {

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
	
}
