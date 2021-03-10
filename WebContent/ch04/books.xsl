<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method ="html" indent="yes" encoding="euc-kr"/>
	<xsl:template match="books">
		<ul> 
			<xsl:for-each select="book">
			<li><b><xsl:value-of select="title"/></b>
			(<i><xsl:value-of select="author"/></i>)
			</li>		
			</xsl:for-each>
		</ul>
	</xsl:template>
</xsl:stylesheet>

<!-- 
	XSL/T 를 사용하여 XML 을 HTML 로 변환하기.
	서버에서 XMl 문서를 읽어 온 다음에 필요한 작업은 읽어온 XML 문서로부터 정보를 읽어와 하면에 알맞게 뿌려주는 것이다.
	
	이때 앞에서처럼 각 노드로부터 정보를 하나씩 읽어와 HTML 코드를 생성한뒤 innerHTML 을 사용하여 원하는 화면을 생성할 수 있지만,
	코드가 너무 복잡해진다.
	
	만약 XSL/T 를 사용해서 XML을 HTML로 변환하기 위해서는 변환 규칙을 담고 있는 XSL 파일을 작성해야 한다. 

 -->