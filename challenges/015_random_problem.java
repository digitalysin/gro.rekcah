// 1. rename this file using solver.java
// 2. compile: javac solver.java
// 3. run: java solver

public class solver {
  public int bucketFromRandom(int randomNumber) {
    int a[] = new int[10];
    for (int i = 0; i < a.length; i++) {
      a[i] = i * randomNumber;
    }
    int index = Math.abs(randomNumber) % a.length;
    return a[index];
  }

  public static void main(String[] args) {
    solver h = new solver();
    for (int i = Integer.MIN_VALUE; i <= Integer.MAX_VALUE; i++) {
      try {
        h.bucketFromRandom(i);
      } catch (Exception e) {
      System.out.println(i);
      break;
      }
    }
  }
}
