package com.example.weka;

import java.io.File;
import java.io.IOException;

import weka.core.Instances;
import weka.core.converters.CSVLoader;
import weka.gui.visualize.PlotData2D;

public class WekaDriver {
	
	public static Instances readCsv() throws IOException {
		CSVLoader loader = new CSVLoader();
		loader.setSource(new File("LogsAmpliado.csv"));
		Instances data = loader.getDataSet();
		return data;
	}
	
	public static void visualizeGraph(Instances data, String x, String y, String c) {
		PlotData2D pd1 = new PlotData2D(data);
		pd1.setXindex(0);
		pd1.setYindex(1);
		pd1.setCindex(1);
	}

}
