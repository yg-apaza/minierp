package org.epis.minierp.util;

import java.math.BigDecimal;
import java.math.RoundingMode;

public class BigDecimalUtil {

    private static RoundingMode roundingMode = RoundingMode.UP;

    public static BigDecimal round2BigDecimal(double number, int decimal ) {
        return BigDecimal.valueOf(number).setScale(decimal, roundingMode);
    }
    
    public static BigDecimal round2BigDecimal(BigDecimal number, int decimal) {
        return number.setScale(decimal, roundingMode);
    }
    
    public static double round2Double(double number, int decimal ) {
        return BigDecimal.valueOf(number).setScale(decimal, roundingMode).doubleValue();
    }
    
    public static double round2Double(BigDecimal number, int decimal) {
        return number.setScale(decimal, roundingMode).doubleValue();
    }
    
    public static double get(BigDecimal number) {
        return number.doubleValue();
    }
    
    public static double get(BigDecimal number, int decimal) {
        return number.setScale(decimal, roundingMode).doubleValue();
    }
    
    public static BigDecimal get(double number) {
        return BigDecimal.valueOf(number);
    }

    public static BigDecimal get(double number, int decimal) {
        return BigDecimal.valueOf(number).setScale(decimal, roundingMode);
    }
    
    public static BigDecimal get(int number) {
        return BigDecimal.valueOf(number);
    }

    public static BigDecimal get(int number, int decimal) {
        return BigDecimal.valueOf(number).setScale(decimal, roundingMode);
    }

    public static BigDecimal get(String number) {
        return new BigDecimal(number);
    }

    public static BigDecimal get(String number, int decimal) {
        return new BigDecimal(number).setScale(decimal, roundingMode);
    }

    public static BigDecimal sumar(double number1, double number2) {
        BigDecimal num1 = BigDecimal.valueOf(number1);
        BigDecimal num2 = BigDecimal.valueOf(number2);
        return num1.add(num2);
    }

    public static BigDecimal sumar(double number1, double number2, int decimal) {
        BigDecimal num1 = BigDecimal.valueOf(number1);
        BigDecimal num2 = BigDecimal.valueOf(number2);
        return num1.add(num2).setScale(decimal, roundingMode);
    }

    public static BigDecimal sumar(BigDecimal number1, BigDecimal number2) {
        return number1.add(number2);
    }

    public static BigDecimal sumar(BigDecimal number1, BigDecimal number2, int decimal) {
        return number1.add(number2).setScale(decimal, roundingMode);
    }

    public static BigDecimal restar(double number1, double number2) {
        BigDecimal num1 = BigDecimal.valueOf(number1);
        BigDecimal num2 = BigDecimal.valueOf(number2);
        return num1.subtract(num2);
    }

    public static BigDecimal restar(double number1, double number2, int decimal) {
        BigDecimal num1 = BigDecimal.valueOf(number1);
        BigDecimal num2 = BigDecimal.valueOf(number2);
        return num1.subtract(num2).setScale(decimal, roundingMode);
    }

    public static BigDecimal restar(BigDecimal number1, BigDecimal number2) {
        return number1.subtract(number2);
    }

    public static BigDecimal restar(BigDecimal number1, BigDecimal number2, int decimal) {
        return number1.subtract(number2).setScale(decimal, roundingMode);
    }

    public static BigDecimal multiplicar(double number1, double number2) {
        BigDecimal num1 = BigDecimal.valueOf(number1);
        BigDecimal num2 = BigDecimal.valueOf(number2);
        return num1.multiply(num2);
    }

    public static BigDecimal multiplicar(double number1, double number2, int decimal) {
        BigDecimal num1 = BigDecimal.valueOf(number1);
        BigDecimal num2 = BigDecimal.valueOf(number2);
        return num1.multiply(num2).setScale(decimal, roundingMode);
    }

    public static BigDecimal multiplicar(BigDecimal number1, BigDecimal number2) {
        return number1.multiply(number2);
    }

    public static BigDecimal multiplicar(BigDecimal number1, BigDecimal number2, int decimal) {
        return number1.multiply(number2).setScale(decimal, roundingMode);
    }

    public static BigDecimal dividir(double number1, double number2) {
        BigDecimal num1 = BigDecimal.valueOf(number1);
        BigDecimal num2 = BigDecimal.valueOf(number2);
        return num1.divide(num2);
    }

    public static BigDecimal dividir(double number1, double number2, int decimal) {
        BigDecimal num1 = BigDecimal.valueOf(number1);
        BigDecimal num2 = BigDecimal.valueOf(number2);
        return num1.divide(num2).setScale(decimal, roundingMode);
    }

    public static BigDecimal dividir(BigDecimal number1, BigDecimal number2) {
        return number1.divide(number2);
    }

    public static BigDecimal dividir(BigDecimal number1, BigDecimal number2, int decimal) {
        return number1.divide(number2, roundingMode);
    }

}
