<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>A Dust Demo</title>
    <script type="text/javascript" src="<c:url value="/resources/dust-full.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/header.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/footer.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/demo.js" />"></script>
    <script type='text/javascript'>

        <%-- Header --%>
        dust.render("header", {}, function(err, out) {
            document.write(out);
        });

        dust.render("demo", {name: "${name}"}, function(err, out) {
            document.write(out);
        });

        dust.render("footer", {}, function(err, out) {
            document.write(out);
        });
    </script>
</head>
<body>
</body>
</html>