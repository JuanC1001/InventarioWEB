<form method="get" target="sessionJsp" action="setAttribute.jsp">
    <label>Value
        <input type="text" name="value">
    </label>
    <input type="submit" value="setAttribute()">
</form>
<br>
<a href="getAttribute.jsp" target="sessionJsp">getAttribute</a>
<br>
<a href="invalidate.jsp" target="sessionJsp">invalidate</a>
<br>
<iframe name="sessionJsp" width="100%">
</iframe>