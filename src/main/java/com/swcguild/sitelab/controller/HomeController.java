/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.sitelab.controller;

import com.swcguild.sitelab.model.Year;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author apprentice
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/luckySevens", method = RequestMethod.GET)
    public String displayLuckySevens() {

        return "luckySevens";
    }

    @RequestMapping(value = "/luckySevens", method = RequestMethod.POST)
    public String luckify(HttpServletRequest request, Model model) {
        String startDollazString = request.getParameter("moneyToBet");

        if (startDollazString == null || startDollazString.isEmpty()) {
            model.addAttribute("mustTypeSomething", "You must type something in the input boxes!");

            return "luckySevens";
        }

        int startDollaz = Integer.parseInt(startDollazString);
        Random r = new Random();
        if (startDollaz < 0) {
            model.addAttribute("mustTypeSomething", "You must type a positive number into the fields");
            return "luckySevens";
        }

        int die1 = 0;
        int die2 = 0;
        int dieComb = 0;
        int rollz = 0;
        int maxDollaz = 0;
        int rollzAtMax = 0;

//        System.out.print("How much would you like to bet? ");
//        startDollaz = sc.nextInt();
        while (startDollaz > 0) {
            die1 = r.nextInt(6) + 1;
            die2 = r.nextInt(6) + 1;
            dieComb = die1 + die2;
            rollz++;

            if (dieComb == 7) {
                startDollaz = startDollaz + 4;
            } else {
                startDollaz = startDollaz - 1;
            }

            if (startDollaz > maxDollaz) {
                maxDollaz = startDollaz;
                rollzAtMax = rollz;

            }

        }

        model.addAttribute("endBalance", startDollaz);
        model.addAttribute("maxDollaz", "$" + maxDollaz + ".00");
        model.addAttribute("maxRollz", rollzAtMax);
        model.addAttribute("totalRollz", rollz);

        return "luckySevensCalc";

    }

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String displayHomePage() {
        return "index";
    }

    //FACTORIZOR//
    //POST//
    @RequestMapping(value = "/factorizor", method = RequestMethod.GET)
    public String displayFactorizor(HttpServletRequest request) {

        return "factorizor";

    }

    @RequestMapping(value = "/factorizor", method = RequestMethod.POST)
    public String factorize(HttpServletRequest request, Model model) {

        String oriNumString = request.getParameter("numberToFactorize");

        if (null == oriNumString || oriNumString.isEmpty()) {
            model.addAttribute("mustTypeSomething", "You must type something in the input boxes!");

            return "factorizor";
        }
        int oriNum = Integer.parseInt(oriNumString);
        if (oriNum < 0) {
            model.addAttribute("mustTypeSomething", "You must type a positive number into the fields");
            return "factorizor";
        }
        // Total Factors for Number
        int totFacNum = 0;

        int sum = 0;
        String perfectMessage;
        String primeMessage;
        String factorsAre = "Factors for " + oriNum + ":";

        List<Integer> factorsList = new ArrayList<>();
        for (int i = 1;
                i < oriNum + 1; i++) {

            if (oriNum % i == 0) {
                factorsList.add(i);
                totFacNum++;
                sum = (sum + i);
            }
        }
        if (sum == oriNum) {
            perfectMessage = oriNum + " is a perfect number.";
        } else {
            perfectMessage = oriNum + " is not a perfect number.";
        }

        if (totFacNum
                == 2) {
            primeMessage = oriNum + " is a prime number.";
        } else {
            primeMessage = oriNum + " is not a prime number.";
        }

        model.addAttribute("perfectMessage", perfectMessage);
        model.addAttribute("primeMessage", primeMessage);
        model.addAttribute("totFacNum", totFacNum);
        model.addAttribute("factorsList", factorsList);
        model.addAttribute("factorsAre", factorsAre);
        return "factorizorCalc";
    }

    @RequestMapping(value = "/interestCalculator", method = RequestMethod.GET)
    public String displayInterestCalculator(HttpServletRequest request) {

        return "interestCalculator";
    }

    @RequestMapping(value = "/interestCalculator", method = RequestMethod.POST)
    public String interestCalculate(HttpServletRequest request, Model model) {

        DecimalFormat df = new DecimalFormat("#0.00");

        String curBalString = request.getParameter("curBal");
        String yRateString = request.getParameter("iRate");
        String yearsString = request.getParameter("years");
        String intCompRate = request.getParameter("intCompRate").toLowerCase();

        if (null == curBalString || null == yRateString || null == intCompRate || null == yearsString || curBalString.isEmpty()
                || yRateString.isEmpty() || intCompRate.isEmpty() || yearsString.isEmpty()) {
            model.addAttribute("mustTypeSomething", "You must type something in the input boxes!");

            return "interestCalculator";
        }

        double curBal = Double.parseDouble(curBalString);
        // double quarRat = 0;
        double newBal = 0;
        double endBal = 0;
        double intEarn = 0;
        double cQuart;
        double qRate = 0;
        double yRate = Double.parseDouble(yRateString);
        //double start = 0;
        double years = Double.parseDouble(yearsString);
        int cYear;
        double startBal = 0;
        double begBal = 0;
        double totInt = 0;
        double per = 0;
        boolean intCompRateInputTest = true;

        begBal = curBal;

        switch (intCompRate) {
            case "quarterly":
                qRate = yRate / 4;
                per = 4;
                break;
            case "yearly":
                qRate = yRate / 1;
                per = 1;
                break;
            case "monthly":
                qRate = yRate / 12;
                per = 12;
                break;
            default:
                intCompRateInputTest = false;
                break;
        }
        if (curBal == -1 || yRate == -1 || years == -1 || intCompRate.isEmpty() || intCompRateInputTest == false) {

            if (intCompRateInputTest == false) {

                model.addAttribute("badInput", "You must type Yearly, Monthly, or Quarterly");
            }

            if (curBal < 0 || yRate < 0 || years < 0) {
                model.addAttribute("badInput", "You must type a positive number into the fields");
            }
            return "interestCalculator";
        }

        List<Year> yearList = new ArrayList<>();

        for (cYear = 1; cYear < years + 1; cYear++) {
            startBal = curBal;
            for (cQuart = 0; cQuart < per; cQuart++) {
                newBal = curBal * (1 + (qRate / 100));
                curBal = newBal;
            }

            endBal = newBal;
            intEarn = endBal - startBal;

            String startBalString = df.format(startBal);
            startBal = Double.parseDouble(startBalString);

            String endBalString = df.format(endBal);
            endBal = Double.parseDouble(endBalString);

//        String cYearString;
//        if (cYear % 1 == 0){
//        cYearString = dfYear.format(cYear);
//        }
//        else 
//            cYearString = Double.toString(cYear);
            yearList.add(new Year(cYear, startBal, endBal));

        }
        totInt = endBal - begBal;

        String totIntString = df.format(totInt);
        totInt = Double.parseDouble(totIntString);

        model.addAttribute("totalInterest", totInt);
        model.addAttribute("yearInt", yearList);

        return "interestCalculatorCalc";
    }

    @RequestMapping(value = "/tipCalculator", method = RequestMethod.GET)
    public String displayTipCalculator(HttpServletRequest request) {

        return "tipCalculator";

    }

    @RequestMapping(value = "/tipCalculator", method = RequestMethod.POST)
    public String tipCalculate(HttpServletRequest request, Model model) {

        DecimalFormat df = new DecimalFormat("#0.00");

        String amountRequest = request.getParameter("amount");
        String tipPercentRequest = request.getParameter("tipPercent");

        if (null == amountRequest || null == tipPercentRequest || amountRequest.isEmpty() || tipPercentRequest.isEmpty()) {
            model.addAttribute("mustTypeSomething", "You must type something in the input boxes!");

            return "tipCalculator";
        }
        double amount = Double.parseDouble(amountRequest);
        double tipPercent = Double.parseDouble(tipPercentRequest);
        double tip = (tipPercent / 100) * amount;
        String tipString = df.format(tip);
        double total = tip + amount;
        String totalString = df.format(total);
        
        if (amount < 0 || tipPercent < 0) {
            model.addAttribute("mustTypeSomething", "You must type a positive number into the fields");
            return "tipCalculator";
        }
        
        model.addAttribute("amount", amount);
        model.addAttribute("tipPercent", tipPercent);
        model.addAttribute("tip", tipString);
        model.addAttribute("total", totalString);

        return "tipCalculatorCalc";

    }

    @RequestMapping(value = "/unitConverter", method = RequestMethod.GET)
    public String displayUnitConverter() {
        return "unitConverter";
    }

    @RequestMapping(value = "/unitConverter", method = RequestMethod.POST)
    public String unitConvert(HttpServletRequest request, Model model) {

        String unitType = request.getParameter("unitType");
        String convertFrom = request.getParameter("convertFrom");
        String convertTo = request.getParameter("convertTo");
        String unitNumber = request.getParameter("unitNumber");

        if (null == unitType || null == convertFrom || null == convertTo || null == unitNumber || unitNumber.isEmpty()) {
            model.addAttribute("mustTypeSomething", "You must type something in the input box and check stuff!");

            return "unitConverter";
        }
        if (convertFrom.equals(convertTo)) {
            model.addAttribute("mustTypeSomething", "You must click two different types to convert!");

            return "unitConverter";
        }
        if ((!unitType.equals("Temperature")) && 0.00 >= Double.parseDouble(unitNumber)) {
            model.addAttribute("mustTypeSomething", "You must input a number greater than 0 to convert!");
            return "unitConverter";
        }
        DecimalFormat df = new DecimalFormat("#0.00");

        switch (unitType) {
            case "Temperature": {
                String unitNumberRequest = request.getParameter("unitNumber");
                String convertFromDenotation = "";
                String convertToDenotation = "";
                double unitNumberDouble = Double.parseDouble(unitNumberRequest);
                double total = 0;

                if (convertFrom.equals("Celsius") && convertTo.equals("Fahrenheit")) {
                    total = (unitNumberDouble * 9 / 5) + 32;
                    convertFromDenotation = "\u00b0C";
                    convertToDenotation = "\u00b0F";
                } else if (convertFrom.equals("Fahrenheit") && convertTo.equals("Celsius")) {
                    total = (unitNumberDouble - 32) * 5 / 9;
                    convertFromDenotation = "\u00b0F";
                    convertToDenotation = "\u00b0C";
                }

                String totalFormatted = df.format(Math.floor(total * 1000) / 1000);

                model.addAttribute("convertFrom", convertFrom);
                model.addAttribute("convertTo", convertTo);
                model.addAttribute("unitNumber", df.format(unitNumberDouble));
                model.addAttribute("result", totalFormatted);
                model.addAttribute("convertFromDenotation", convertFromDenotation);
                model.addAttribute("convertToDenotation", convertToDenotation);

                break;
            }
            case "Currency": {
                String unitNumberRequest = request.getParameter("unitNumber");
                String convertFromDenotation = "";
                String convertToDenotation = "";
                String convertFromSymbol = "";
                String convertToSymbol = "";
                double unitNumberDouble = Double.parseDouble(unitNumberRequest);
                double total = 0;

                if (convertFrom.equals("Pounds") && convertTo.equals("USD")) {
                    total = unitNumberDouble * 1.312197;
                    convertFromSymbol = "\u00a3; ";
                    convertToSymbol = "$";
                } else if (convertFrom.equals("USD") && convertTo.equals("Pounds")) {
                    total = unitNumberDouble * .762235;
                    convertFromSymbol = "$";
                    convertToSymbol = "\u00a3";
                }

                String totalFormatted = df.format(Math.floor(total * 1000) / 1000);

                model.addAttribute("convertFrom", convertFrom);
                model.addAttribute("convertTo", convertTo);
                model.addAttribute("unitNumber", df.format(unitNumberDouble));
                model.addAttribute("result", totalFormatted);
                model.addAttribute("convertFromDenotation", convertFromDenotation);
                model.addAttribute("convertToDenotation", convertToDenotation);
                model.addAttribute("convertToSymbol", convertToSymbol);
                model.addAttribute("convertFromSymbol", convertFromSymbol);
                break;
            }
            case "Volume": {
                String unitNumberRequest = request.getParameter("unitNumber");
                String convertFromDenotation = "";
                String convertToDenotation = "";
                double unitNumberDouble = Double.parseDouble(unitNumberRequest);
                double total = 0;

                if (convertFrom.equals("Cup") && convertTo.equals("Ounce")) {
                    total = unitNumberDouble * 8;
                    convertFromDenotation = "Cup(s)";
                    convertToDenotation = "Oz(s)2";
                } else if (convertFrom.equals("Ounce") && convertTo.equals("Cup")) {
                    total = unitNumberDouble * 0.125;
                    convertFromDenotation = "Oz(s)";
                    convertToDenotation = "Cup(s)";
                }

                String totalFormatted = df.format(Math.floor(total * 1000) / 1000);

                model.addAttribute("convertFrom", convertFrom);
                model.addAttribute("convertTo", convertTo);
                model.addAttribute("unitNumber", df.format(unitNumberDouble));
                model.addAttribute("result", totalFormatted);
                model.addAttribute("convertFromDenotation", convertFromDenotation);
                model.addAttribute("convertToDenotation", convertToDenotation);
                break;
            }
            case "Mass": {
                String unitNumberRequest = request.getParameter("unitNumber");
                String convertFromDenotation = "";
                String convertToDenotation = "";
                double unitNumberDouble = Double.parseDouble(unitNumberRequest);
                double total = 0;

                if (convertFrom.equals("Lb") && convertTo.equals("Kg")) {
                    total = unitNumberDouble * .453592;
                    convertFromDenotation = "Pound(s)";
                    convertToDenotation = "Kilograms";
                } else if (convertFrom.equals("Kg") && convertTo.equals("Lb")) {
                    total = unitNumberDouble * 2.20462;
                    convertFromDenotation = "Kilogram(s)";
                    convertToDenotation = "Pounds";
                }

                String totalFormatted = df.format(Math.floor(total * 1000) / 1000);

                model.addAttribute("convertFrom", convertFrom);
                model.addAttribute("convertTo", convertTo);
                model.addAttribute("unitNumber", df.format(unitNumberDouble));
                model.addAttribute("result", totalFormatted);
                model.addAttribute("convertFromDenotation", convertFromDenotation);
                model.addAttribute("convertToDenotation", convertToDenotation);
                break;
            }
            default:
                break;
        }

        return "unitConverterCalc";
    }

}
