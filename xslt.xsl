<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:sql="urn:schemas-microsoft-com:mapping-schema" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.4in" margin-right="0.1in" margin-top="0.0in" margin-bottom="0.0in">
                <fo:region-before extent="0.49in" />
                <fo:region-body margin-top="0.49in" margin-bottom="0.49in" font-family="Helvetica,Times,Courier" font-size="10pt" />
                <fo:region-after extent="0.79in" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:template match="/">
        <fo:root>
            <xsl:copy-of select="$fo:layout-master-set" />
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block>
                        <fo:table width="100%" space-before.optimum="0pt" space-after.optimum="1pt">
                            <fo:table-column />
                            <fo:table-column column-width="150pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" height="10pt" number-columns-spanned="2" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="left" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block><fo:inline font-size="7pt" font-weight="bold">Pro Teck Valuation Services</fo:inline></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" width="150pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block><fo:inline font-size="7pt" font-weight="bold">Invoice# <xsl:for-each select="invoice">
                                                <xsl:for-each select="@number">
                                                    <xsl:value-of select="." />
                                                </xsl:for-each>
                                            </xsl:for-each></fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" number-columns-spanned="2" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:block color="black" space-before.optimum="-8pt">
                                                <fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after" display-align="after">
                    <fo:block>
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column column-width="150pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" height="30pt" number-columns-spanned="2" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" number-columns-spanned="2" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:block color="black" space-before.optimum="-8pt">
                                                <fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="left" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="7pt" font-weight="bold">
																							</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" width="150pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                        <fo:block>
                                            <fo:inline font-size="7pt" font-weight="bold">Page: </fo:inline>
                                            <fo:page-number font-size="7pt" font-weight="bold" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <xsl:for-each select="invoice">
                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
                                                    <xsl:attribute name="src">url('<xsl:text disable-output-escaping="yes">https://www.protk.com/images/ProteckLogoForPDF.gif</xsl:text>')</xsl:attribute>
                                                </fo:external-graphic>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <fo:inline font-size="8pt">465 Waverley Oaks&#160; Road, Suite 320</fo:inline>
                                                <fo:block />
                                                <fo:inline font-size="8pt">Waltham, MA 02452</fo:inline>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <fo:inline font-size="8pt">Tel. (781) 899-4949</fo:inline>
                                                <fo:block />
                                                <fo:inline font-size="8pt">Fax. (781) 891-3553</fo:inline>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                  <fo:table-row>
                                    <fo:table-cell number-columns-spanned="3" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                      <fo:block>
                                        <fo:inline font-size="10pt">***  PLEASE NOTE OUR NEW REMITTANCE INSTRUCTIONS  ***</fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>
                                  <fo:table-row>
                                    <fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                      <fo:block>
                                        <fo:inline font-size="10pt">** BY U.S. Mail**</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">Pro Teck Valuation Intelligence</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">Department 1190</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">P.O. Box 986500</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">Boston MA 02298-6500</fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                      <fo:block>
                                        <fo:inline font-size="10pt">** By Overnight Delivery **</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">Pro Teck Valuation Intelligence</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">465 Waverley Oaks Rd, Ste. 320</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">Waltham MA 02452</fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                      <fo:block>
                                        <fo:inline font-size="10pt">** By Wire Transfer or ACH **</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">Wellesley Bank</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">100 Worcester Street</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">Wellesley MA 02481</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">For credit to:  Pro Teck Valuation Intelligence</fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">Account # 0041007626 </fo:inline>
                                        <fo:block />
                                        <fo:inline font-size="10pt">Routing # 211372310</fo:inline>
                                      </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <xsl:for-each select="company">
                                                    <xsl:for-each select="name">
                                                        <fo:inline font-size="10pt" font-weight="bold">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                                <fo:block />
                                                <fo:inline font-size="10pt" font-weight="bold">Attn: </fo:inline>
                                                <xsl:for-each select="company">
                                                  <xsl:for-each select="billing-contact">
                                                    <xsl:for-each select="billing-contact-name">
                                                      <fo:inline font-size="10pt" font-weight="bold">-Name:&#xD;</fo:inline>
                                                      <fo:inline font-size="10pt">
                                                        <xsl:apply-templates/>
                                                      </fo:inline>
                                                      <fo:block />
                                                    </xsl:for-each>
                                                    <xsl:for-each select="billing-contact-email">
                                                      <fo:inline  font-size="10pt" font-weight="bold">-Email:&#xD;</fo:inline>
                                                      <fo:inline font-size="10pt">
                                                        <xsl:apply-templates/>
                                                      </fo:inline>
                                                    </xsl:for-each>
                                                    <fo:block>____________________________________</fo:block>
                                                  </xsl:for-each>
                                                </xsl:for-each>
                                                <fo:block />
                                                <xsl:for-each select="company">
                                                    <xsl:for-each select="address">
                                                        <xsl:for-each select="street">
                                                            <fo:inline font-size="10pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                        <fo:inline font-size="10pt">&#160;</fo:inline>
                                                        <xsl:for-each select="unit">
                                                            <fo:inline font-size="10pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                        <fo:block />
                                                        <xsl:for-each select="city">
                                                            <fo:inline font-size="10pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                        <fo:inline font-size="10pt">, </fo:inline>
                                                        <xsl:for-each select="state">
                                                            <fo:inline font-size="10pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                        <fo:inline font-size="10pt">&#160;</fo:inline>
                                                        <xsl:for-each select="zip">
                                                            <fo:inline font-size="10pt">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                                <fo:inline font-size="10pt">&#160;</fo:inline>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <fo:inline font-size="10pt" font-weight="bold">Invoice Number:</fo:inline>
                                                <fo:inline font-size="10pt">&#160;</fo:inline>
                                                <xsl:for-each select="@number">
                                                    <fo:inline font-size="10pt">
                                                        <xsl:value-of select="." />
                                                    </fo:inline>
                                                </xsl:for-each>
                                                <fo:block />
                                                <fo:inline font-size="10pt" font-weight="bold">Invoice Date:</fo:inline>
                                                <fo:inline font-size="10pt">&#160;</fo:inline>
                                                <xsl:for-each select="invoice-date">
                                                    <fo:inline font-size="10pt">
														<xsl:value-of select="substring(.,6,2)" />
														<xsl:text>/</xsl:text>
														<xsl:value-of select="substring(.,9,2)" />
														<xsl:text>/</xsl:text>
														<xsl:value-of select="substring(.,1,4)" />
                                                    </fo:inline>
                                                </xsl:for-each>
                                                <fo:block />
                                                <fo:inline font-size="10pt" font-weight="bold">Customer ID:</fo:inline>
                                                <fo:inline font-size="10pt">&#160;</fo:inline>
                                                <xsl:for-each select="company">
                                                    <xsl:for-each select="@code">
                                                        <fo:inline font-size="10pt">
                                                            <xsl:value-of select="." />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                            <fo:block>
                                <fo:leader leader-pattern="space" />
                            </fo:block>
                            <fo:block />
                            <fo:block text-align="center" font-size="10pt">
								Billing for the period <xsl:for-each select="start-date">
									<fo:inline font-size="10pt">
										<xsl:value-of select="substring(.,6,2)" />
										<xsl:text>/</xsl:text>
										<xsl:value-of select="substring(.,9,2)" />
										<xsl:text>/</xsl:text>
										<xsl:value-of select="substring(.,1,4)" />
									</fo:inline>
								</xsl:for-each> to <xsl:for-each select="end-date">
                                    <fo:inline font-size="10pt">
										<xsl:value-of select="substring(.,6,2)" />
										<xsl:text>/</xsl:text>
										<xsl:value-of select="substring(.,9,2)" />
										<xsl:text>/</xsl:text>
										<xsl:value-of select="substring(.,1,4)" />
                                    </fo:inline>
								</xsl:for-each>
                            </fo:block>
                            <fo:block>
                                <xsl:text>&#xA;</xsl:text>
                            </fo:block>
                            <fo:block />
                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:table-column />
                                    <fo:table-column />
                                    <fo:table-column />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                <fo:block />
                                            </fo:table-cell>
                                            <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                <fo:block>
                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                        <fo:table-column />
                                                        <fo:table-body>
                                                            <fo:table-row>
                                                                <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                                                    <fo:block>
                                                                        <fo:inline font-size="10pt">Payment Terms:</fo:inline>
																		<fo:block>
																			<fo:leader leader-pattern="space" />
																		</fo:block>
                                                                        <fo:inline font-size="10pt">Balance Due Upon Receipt</fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                        </fo:table-body>
                                                    </fo:table>
													<fo:block>
														<fo:leader leader-pattern="space" />
													</fo:block>
                                                    <fo:inline font-size="10pt">Pro Teck Tax ID# 04-2630849</fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                <fo:block />
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                            <fo:block>
                                <fo:leader leader-pattern="space" />
                            </fo:block>
                            <xsl:for-each select="summary">
                                <xsl:for-each select="line-item">
                                    <xsl:if test="position()=1">
                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-column column-width="200pt" />
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-header>
                                                <fo:table-row background-color="#DDDDEE" text-align="center">
                                                    <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                        <fo:block>
                                                            <fo:inline font-size="10pt" font-weight="bold">Item</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                        <fo:block>
                                                            <fo:inline font-size="10pt" font-weight="bold">Quantity</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell text-align="center" width="200pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                        <fo:block>
                                                            <fo:inline font-size="10pt" font-weight="bold">Description</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                        <fo:block>
                                                            <fo:inline font-size="10pt" font-weight="bold">Unit Price</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                        <fo:block>
                                                            <fo:inline font-size="10pt" font-weight="bold">Extension</fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </fo:table-header>
                                            <fo:table-body>
                                                <xsl:for-each select="../line-item">
                                                    <fo:table-row background-color="#FFFFEE">
                                                        <fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="item">
                                                                    <fo:inline font-size="9pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="quantity">
                                                                    <fo:inline font-size="9pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="description">
                                                                    <fo:inline font-size="9pt">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="unit-price">
                                                                    <fo:inline font-size="9pt">
																		<xsl:if test="string-length(.) &gt; 0">
																			<xsl:value-of select='format-number(.,"$###,###.00")' />
																		</xsl:if>
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="extension">
                                                                    <fo:inline font-size="9pt">
																		<xsl:if test="string-length(.) &gt; 0">
																			<xsl:value-of select='format-number(.,"$###,###.00")' />
																		</xsl:if>
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </xsl:for-each>
                                            </fo:table-body>
                                        </fo:table>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:for-each>
                            <fo:block>
                                <xsl:text>&#xA;</xsl:text>
                            </fo:block>
                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-column column-width="200pt" />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block />
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block />
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block />
                                        </fo:table-cell>
                                        <fo:table-cell background-color="#DDDDEE" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="center" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <fo:inline font-size="10pt" font-weight="bold">Total:</fo:inline>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell background-color="#DDDDEE" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <xsl:for-each select="billing-fee">
                                                    <fo:inline font-size="10pt" font-weight="bold">
														<xsl:if test="string-length(.) &gt; 0">
															<xsl:value-of select='format-number(.,"$###,###.00")' />
														</xsl:if>
                                                    </fo:inline>
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                            <fo:block>
                                <fo:leader leader-pattern="space" />
                            </fo:block>
                            <fo:block break-after="page" />
                            <xsl:for-each select="details">
                                <xsl:for-each select="case">
                                    <xsl:if test="position()=1">
                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                            <fo:table-column column-width="120pt" />
                                            <fo:table-column column-width="230pt" />
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-column />
                                            <fo:table-header>
                                                <fo:table-row background-color="#DDDDEE">
                                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                        <fo:block font-size="9pt" font-weight="bold">Client ID#<fo:block />Loan#</fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                        <fo:block font-size="9pt" font-weight="bold">Name<fo:block />Address</fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                        <fo:block font-size="9pt" font-weight="bold">Date<fo:block />Ordered</fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                        <fo:block font-size="9pt" font-weight="bold">Date<fo:block />Complete</fo:block>
                                                    </fo:table-cell>
                                                    <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                        <fo:block font-size="9pt" font-weight="bold">Billing Fee</fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </fo:table-header>
                                            <fo:table-body>
                                                <xsl:for-each select="../case">
                                                    <fo:table-row>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block font-size="9pt">
                                                                <xsl:for-each select="client-id">
                                                                    <xsl:apply-templates />
                                                                </xsl:for-each><xsl:for-each select="loan-number">
                                                                    <fo:block /><xsl:apply-templates />
                                                                </xsl:for-each>
                                                                <fo:block />
                                                                <xsl:for-each select="@number">
                                                                    <xsl:value-of select="." />
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block font-size="9pt">
                                                                <xsl:for-each select="last-name">
                                                                    <xsl:apply-templates />
                                                                </xsl:for-each>, <xsl:for-each select="first-name">
                                                                    <xsl:apply-templates />
                                                                </xsl:for-each>
                                                              <xsl:for-each select="colast-name">
                                                                <xsl:apply-templates />
                                                              </xsl:for-each>, <xsl:for-each select="cofirst-name">
                                                                <xsl:apply-templates />
                                                              </xsl:for-each>
                                                                <fo:block />
                                                                <xsl:for-each select="address">
                                                                    <xsl:for-each select="street">
                                                                        <xsl:apply-templates />
                                                                    </xsl:for-each>&#160;<xsl:for-each select="unit">
                                                                        <xsl:apply-templates />
                                                                    </xsl:for-each>,<xsl:for-each select="city">
                                                                        <xsl:apply-templates />
                                                                    </xsl:for-each>, <xsl:for-each select="state">
                                                                        <xsl:apply-templates />
                                                                    </xsl:for-each>&#160;<xsl:for-each select="zip">
                                                                        <xsl:apply-templates />
                                                                    </xsl:for-each>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="order-date">
																	<fo:inline font-size="9pt">
																		<xsl:value-of select="substring(.,6,2)" />
																		<xsl:text>/</xsl:text>
																		<xsl:value-of select="substring(.,9,2)" />
																		<xsl:text>/</xsl:text>
																		<xsl:value-of select="substring(.,1,4)" />
																	</fo:inline>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="complete-date">
																	<fo:inline font-size="9pt">
																		<xsl:value-of select="substring(.,6,2)" />
																		<xsl:text>/</xsl:text>
																		<xsl:value-of select="substring(.,9,2)" />
																		<xsl:text>/</xsl:text>
																		<xsl:value-of select="substring(.,1,4)" />
																	</fo:inline>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="end" border-style="solid" border-width="1pt" border-color="white">
                                                            <fo:block>
                                                                <xsl:for-each select="billing-fee">
																	<fo:inline font-size="9pt">
																		<xsl:text>$</xsl:text><xsl:value-of select="." />
																	</fo:inline>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
													<fo:table-row>
														<fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" number-columns-spanned="5" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
															<fo:block>
																<fo:inline font-size="8pt" font-weight="bold">Contact: </fo:inline>
																<fo:inline font-size="8pt">
																	<xsl:for-each select="order-contact">
																		<xsl:apply-templates />
																	</xsl:for-each>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
                                                    <fo:table-row>
                                                    <fo:table-cell>
                                                    <xsl:for-each select="product">
                                                    <xsl:if test="position()=1">
														<fo:table width="440pt" space-before.optimum="1pt" space-after.optimum="1pt">
															<fo:table-column />
															<fo:table-column />
															<fo:table-column column-width="200pt" />
															<fo:table-column />
															<fo:table-column />
															<fo:table-header>
																<fo:table-row background-color="#EEEEFF" text-align="center" line-height="9pt">
																	<fo:table-cell text-align="center" padding-start="0pt" padding-end="0pt" padding-before="1pt" padding-after="1pt" display-align="center" border-style="solid" border-width="0pt" border-color="white">
																		<fo:block>
																			<fo:inline font-size="8pt" font-weight="bold">Item</fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell text-align="center" padding-start="0pt" padding-end="0pt" padding-before="1pt" padding-after="1pt" display-align="center" border-style="solid" border-width="0pt" border-color="white">
																		<fo:block>
																			<fo:inline font-size="8pt" font-weight="bold">Quantity</fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell text-align="center" width="200pt" padding-start="0pt" padding-end="0pt" padding-before="1pt" padding-after="1pt" display-align="center" border-style="solid" border-width="0pt" border-color="white">
																		<fo:block>
																			<fo:inline font-size="8pt" font-weight="bold">Description</fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell text-align="center" padding-start="0pt" padding-end="0pt" padding-before="1pt" padding-after="1pt" display-align="center" border-style="solid" border-width="0pt" border-color="white">
																		<fo:block>
																			<fo:inline font-size="8pt" font-weight="bold">Unit Price</fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell text-align="center" padding-start="0pt" padding-end="0pt" padding-before="1pt" padding-after="1pt" display-align="center" border-style="solid" border-width="0pt" border-color="white">
																		<fo:block>
																			<fo:inline font-size="8pt" font-weight="bold">Extension</fo:inline>
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
															</fo:table-header>
															<fo:table-body>
															<xsl:for-each select="../product">
																<fo:table-row background-color="#FFFFEE" line-height="9pt">
																	<fo:table-cell text-align="center" padding-start="0pt" padding-end="0pt" padding-before="1pt" padding-after="1pt" display-align="center" border-style="solid" border-width="0pt" border-color="white">
																		<fo:block>
																			<xsl:for-each select="item">
																				<fo:inline font-size="8pt">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell text-align="center" padding-start="0pt" padding-end="0pt" padding-before="1pt" padding-after="1pt" display-align="center" border-style="solid" border-width="0pt" border-color="white">
																		<fo:block>
																			<xsl:for-each select="quantity">
																				<fo:inline font-size="8pt">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell padding-start="3pt" padding-end="0pt" padding-before="0pt" padding-after="1pt" display-align="center" text-align="start" border-style="solid" border-width="0pt" border-color="white">
																		<fo:block>
																			<xsl:for-each select="description">
																				<fo:inline font-size="8pt">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell text-align="center" padding-start="0pt" padding-end="0pt" padding-before="1pt" padding-after="1pt" display-align="center" border-style="solid" border-width="0pt" border-color="white">
																		<fo:block>
																			<xsl:for-each select="unit-price">
																				<fo:inline font-size="8pt">
																					<xsl:if test="string-length(.) &gt; 0">
																						<xsl:value-of select='format-number(.,"$###,###.00")' />
																					</xsl:if>
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell text-align="center" padding-start="0pt" padding-end="0pt" padding-before="1pt" padding-after="1pt" display-align="center" border-style="solid" border-width="0pt" border-color="white">
																		<fo:block>
																			<xsl:for-each select="extension">
																				<fo:inline font-size="8pt">
																					<xsl:if test="string-length(.) &gt; 0">
																						<xsl:value-of select='format-number(.,"$###,###.00")' />
																					</xsl:if>
																				</fo:inline>
																			</xsl:for-each>
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
															</xsl:for-each>
															</fo:table-body>
														</fo:table>
													</xsl:if>
													</xsl:for-each>
													</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" number-columns-spanned="5" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
															<fo:block>
																<fo:inline font-size="8pt" font-weight="bold">Note: </fo:inline>
																<fo:inline font-size="8pt">
																	<xsl:value-of select="./bill-notes" />
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" number-columns-spanned="5" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
															<fo:block>
																<fo:block color="#DDDDEE" space-before.optimum="-8pt">
																	<fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
																</fo:block>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
                                                </xsl:for-each>
                                            </fo:table-body>
                                        </fo:table>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:for-each>
                            <fo:block>
                                <fo:leader leader-pattern="space" />
                            </fo:block>
                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-column column-width="200pt" />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block />
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block />
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block />
                                        </fo:table-cell>
                                        <fo:table-cell background-color="#DDDDEE" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="center" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <fo:inline font-size="10pt" font-weight="bold">Total:</fo:inline>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell background-color="#DDDDEE" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                            <fo:block>
                                                <xsl:for-each select="billing-fee">
                                                    <fo:inline font-size="10pt" font-weight="bold">
														<xsl:if test="string-length(.) &gt; 0">
															<xsl:value-of select='format-number(.,"$###,###.00")' />
														</xsl:if>
                                                    </fo:inline>
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </xsl:for-each>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
