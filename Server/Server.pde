import com.sun.net.httpserver.HttpServer;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;

import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;

int port = 9000;

void setup() {
  size(400, 400);
  try {
    HttpServer server = HttpServer.create(new InetSocketAddress(port), 0);
    System.out.println("server started at " + port);
    server.createContext("/", new EchoGetHandler());
    server.setExecutor(null);
    server.start();
  } 
  catch(IOException e) {
  }
}

public class EchoGetHandler implements HttpHandler {
  public void handle(HttpExchange he) throws IOException {
    Map<String, Object> parameters = new HashMap<String, Object>();
    URI requestedUri = he.getRequestURI();
    String query = requestedUri.getRawQuery();
    String happinessQuery = query.substring(10);
    String response = "";
    he.sendResponseHeaders(200, response.length());
    OutputStream os = he.getResponseBody();
    os.write(response.getBytes());

    if (!happinessQuery.equals("")) {
      surface.setTitle("-(" + happinessQuery);
      println(happinessQuery);
    }

    os.close();
  }
}