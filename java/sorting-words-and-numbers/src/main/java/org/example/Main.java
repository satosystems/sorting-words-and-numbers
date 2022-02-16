package org.example;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

record Pair(List<String> first, List<String> second) {}

public class Main {
    public static void main(final String... args) throws Exception {
        final var scanner = new Scanner(System.in);
        while (true) {
            final var line = scanner.nextLine();
            final var splitted = line.split(" ");
            final var sorted = Arrays.stream(splitted).reduce(new Pair(new LinkedList<>(), new LinkedList<>()), (acc, cur) -> {
                if (cur.chars().allMatch(Character::isDigit)) {
                    acc.first().add(cur);
                } else {
                    acc.second().add(cur);
                }
                return acc;
            }, (acc, cur) -> acc);
            System.out.println(sorted);
        }
    }
}
