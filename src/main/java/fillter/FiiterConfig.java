package fillter;

import java.io.IOException;
import java.net.http.HttpResponse;
import java.util.List;
import java.util.Objects;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Login;
import entity.Users;

@WebFilter("/*")
public class FiiterConfig extends HttpFilter implements Filter {

	public FiiterConfig() {
		super();

	}

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		List<String> URLS = List.of("/api/login","/api/home");

		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpResp = (HttpServletResponse) response;

		boolean isStaticResource = httpReq.getRequestURI().startsWith("javaWe/resource/");

		HttpSession session = httpReq.getSession();
		Object sessionVal = session.getAttribute("user-session");
		String path = httpReq.getServletPath();
		if (Objects.isNull(sessionVal) && !isStaticResource && !URLS.contains(path)) {
			
		httpResp.sendRedirect("/javaWe/api/login");
			

		} else {
			if (sessionVal != null && path.contains("/api/products")) {
				Users users = (Users) sessionVal;
				System.out.println(2);
				if (users.isRole()) {
					System.out.println(3);
					chain.doFilter(request, response);
				} else {
					System.out.println(4);
					httpResp.sendError(HttpServletResponse.SC_UNAUTHORIZED);
				}
			}
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}
}