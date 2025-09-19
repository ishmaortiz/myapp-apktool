.class public Lcom/hp/vd/connection/formatter/Xml;
.super Ljava/lang/Object;
.source "Xml.java"

# interfaces
.implements Lcom/hp/vd/connection/formatter/IFormatter;


# instance fields
.field protected document:Lorg/w3c/dom/Document;

.field protected documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field result:Ljavax/xml/transform/stream/StreamResult;

.field source:Ljavax/xml/transform/dom/DOMSource;

.field protected stringWriter:Ljava/io/StringWriter;

.field protected transformer:Ljavax/xml/transform/Transformer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->document:Lorg/w3c/dom/Document;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->transformer:Ljavax/xml/transform/Transformer;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->stringWriter:Ljava/io/StringWriter;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->result:Ljavax/xml/transform/stream/StreamResult;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->source:Ljavax/xml/transform/dom/DOMSource;

    .line 32
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 34
    iget-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->document:Lorg/w3c/dom/Document;

    .line 36
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->transformer:Ljavax/xml/transform/Transformer;

    .line 38
    iget-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->transformer:Ljavax/xml/transform/Transformer;

    const-string v1, "omit-xml-declaration"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->transformer:Ljavax/xml/transform/Transformer;

    const-string v1, "encoding"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->transformer:Ljavax/xml/transform/Transformer;

    const-string v1, "indent"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->stringWriter:Ljava/io/StringWriter;

    .line 44
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    iget-object v1, p0, Lcom/hp/vd/connection/formatter/Xml;->stringWriter:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->result:Ljavax/xml/transform/stream/StreamResult;

    .line 45
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    iget-object v1, p0, Lcom/hp/vd/connection/formatter/Xml;->document:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/hp/vd/connection/formatter/Xml;->source:Ljavax/xml/transform/dom/DOMSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public format(Lcom/hp/vd/data/IData;)[B
    .locals 3

    .line 59
    invoke-interface {p1}, Lcom/hp/vd/data/IData;->dump()Lcom/hp/vd/data/presentation/NodeAbstract;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/connection/formatter/Xml;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/connection/formatter/Xml;->parseData(Lcom/hp/vd/data/presentation/NodeAbstract;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "v"

    .line 60
    invoke-interface {p1}, Lcom/hp/vd/data/IData;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/hp/vd/connection/formatter/Xml;->document:Lorg/w3c/dom/Document;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 69
    :try_start_0
    iget-object p1, p0, Lcom/hp/vd/connection/formatter/Xml;->stringWriter:Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 70
    iget-object p1, p0, Lcom/hp/vd/connection/formatter/Xml;->transformer:Ljavax/xml/transform/Transformer;

    iget-object v1, p0, Lcom/hp/vd/connection/formatter/Xml;->source:Ljavax/xml/transform/dom/DOMSource;

    iget-object v2, p0, Lcom/hp/vd/connection/formatter/Xml;->result:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p1, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 72
    iget-object p1, p0, Lcom/hp/vd/connection/formatter/Xml;->document:Lorg/w3c/dom/Document;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    iget-object p1, p0, Lcom/hp/vd/connection/formatter/Xml;->stringWriter:Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected parseData(Lcom/hp/vd/data/presentation/NodeAbstract;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 3

    .line 87
    invoke-virtual {p1}, Lcom/hp/vd/data/presentation/NodeAbstract;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    check-cast p1, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p1}, Lcom/hp/vd/data/presentation/KeyValueNode;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 91
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    .line 95
    invoke-virtual {v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p0, v1, p2}, Lcom/hp/vd/connection/formatter/Xml;->parseData(Lcom/hp/vd/data/presentation/NodeAbstract;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 98
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 102
    invoke-virtual {v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 104
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    return-object p1
.end method
