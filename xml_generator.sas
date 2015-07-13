/* using groovy to parse json into sas */
proc groovy;

	add classpath="java-json.jar";

	/* showing proc groovy where my json java files are */
	submit; /* starting groovy */

		import org.json.JSONObject
		import org.json.XML
		import java.io.File
		import java.io.PrintWriter

		/* loading json from file */
		def json_string = new File("C:/Public/test.json").text

		/* converting json to xml */
		def json = new JSONObject(json_string)
		def xml = XML.toString(json)

		/* saving to file */
		def out = new PrintWriter("C:/Public/output_xml.xml")

		/* adding xml headers */
		out.println("<xml>", xml, "</xml>")

		out.close()

	endsubmit;

quit;

/* no need for a run statement - anything in proc groovy runs automatically */
