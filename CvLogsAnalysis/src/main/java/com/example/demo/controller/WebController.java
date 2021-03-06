package com.example.demo.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.weka.WekaDriver;

import weka.core.Instances;

@Controller
public class WebController {
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	String home(ModelMap model) {
		return "home";
	}
	
	@RequestMapping(value="/aceptar", method = RequestMethod.GET)
	String aceptar() {
		final String dir = System.getProperty("user.dir");
		try {
			Process proc = Runtime.getRuntime().exec("python " + dir + "\\src\\main\\webapp\\python\\limpiar.py");
			BufferedReader stdInput = new BufferedReader(new 
				     InputStreamReader(proc.getInputStream()));

			BufferedReader stdError = new BufferedReader(new 
			     InputStreamReader(proc.getErrorStream()));

			// read the output from the command
			System.out.println("Here is the standard output of the command:\n");
			String s = null;
			while ((s = stdInput.readLine()) != null) {
			    System.out.println(s);
			}

			// read any errors from the attempted command
			System.out.println("Here is the standard error of the command (if any):\n");
			while ((s = stdError.readLine()) != null) {
			    System.out.println(s);
			}
			
			/*WekaDriver driver = new WekaDriver();
			Instances data = driver.readCsv();
			try {
				driver.visualizeGraph(data, 0, 1, 1);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "resultados";
	}

}
