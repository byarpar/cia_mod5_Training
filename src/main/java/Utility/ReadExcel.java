package Utility;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


public class ReadExcel {
	
	public static ArrayList<String> getExcelData(String path) throws IOException{
		ArrayList<String> myList = new ArrayList<>();
		
		File file = new File(path);//to locate file
		FileInputStream fis = new FileInputStream(file);//read as byte data

		try (XSSFWorkbook workbook = new XSSFWorkbook(fis)) { //create a workbook
			
			XSSFSheet sheet = workbook.getSheetAt(0);//get workbook sheet

			Iterator<Row> rows = sheet.iterator();//to get row 

			while (rows.hasNext()) {//check row is empty or not
				Row row = rows.next();//move pointer to next point

				Iterator<Cell> cells = row.cellIterator();

				Cell cell = cells.next();

				myList.add(cell.getStringCellValue());
			}
		}
		return myList;
	}
	
}