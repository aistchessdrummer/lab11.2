<%@ page import="java.util.*"%>




<%!
		class Record {
			Date data;
			String message;
			Record(Date data, String message){
				this.data = data;
				this.message = message;
			}				
		};
		ArrayList<Record> records = new ArrayList<Record>();
%>
		
	<%
			if(records.size() == 0) {
			records.add(new Record(new Date(2020 - 1901, 4, 02, 8, 10),
				"Good morning!"));
			records.add(new Record(new Date(2020 - 1901, 4, 02, 8, 30),
				"Drink coffee!"));
			records.add(new Record(new Date(2020 - 1901, 4, 02, 10, 10),
				"go to the job!"));
			}
				String message = request.getParameter("message");
				if (message != null && message.trim().length()!=0) {
					records.add(new Record(new Date(), message));
			}
			
	%>

	<%
			out.println("[");
			for (Record r : records) {
			out.println("{data: \"" + r.data + "\", message: \"" + r.message + "\"},");
			}
			out.println("]");			
	%>