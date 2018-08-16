package com.example.weka;

import java.io.File;
import java.io.IOException;

import weka.core.Instances;
import weka.core.converters.CSVLoader;
import weka.gui.visualize.JPEGWriter;
import weka.gui.visualize.Plot2D;
import weka.gui.visualize.PlotData2D;

public class WekaDriver {
	
	public Instances readCsv() throws IOException {
		CSVLoader loader = new CSVLoader();
		File file = new File("LogsAmpliado.csv");
		loader.setSource(file);
		Instances data = loader.getDataSet();
		return data;
	}
	
	public void visualizeGraph(Instances data, int x, int y, int c) throws Exception {
		PlotData2D pd1 = new PlotData2D(data);
		
		Plot2D plot = new Plot2D();
		plot.setMasterPlot(pd1);
		
		plot.setXindex(x);
		plot.setYindex(y);
		
		File file1 = new File("imagen.jpg");
		JPEGWriter writer = new JPEGWriter(plot, file1);
		writer.generateOutput();
	}

}
