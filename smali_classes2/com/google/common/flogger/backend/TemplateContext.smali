.class public final Lcom/google/common/flogger/backend/TemplateContext;
.super Ljava/lang/Object;
.source "TemplateContext.java"


# instance fields
.field private final message:Ljava/lang/String;

.field private final parser:Lcom/google/common/flogger/parser/MessageParser;


# direct methods
.method public constructor <init>(Lcom/google/common/flogger/parser/MessageParser;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "parser"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/parser/MessageParser;

    iput-object p1, p0, Lcom/google/common/flogger/backend/TemplateContext;->parser:Lcom/google/common/flogger/parser/MessageParser;

    .line 38
    const-string p1, "message"

    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/flogger/backend/TemplateContext;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 53
    instance-of v0, p1, Lcom/google/common/flogger/backend/TemplateContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lcom/google/common/flogger/backend/TemplateContext;

    .line 55
    iget-object v0, p0, Lcom/google/common/flogger/backend/TemplateContext;->parser:Lcom/google/common/flogger/parser/MessageParser;

    iget-object v2, p1, Lcom/google/common/flogger/backend/TemplateContext;->parser:Lcom/google/common/flogger/parser/MessageParser;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/flogger/backend/TemplateContext;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/common/flogger/backend/TemplateContext;->message:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/common/flogger/backend/TemplateContext;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getParser()Lcom/google/common/flogger/parser/MessageParser;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/common/flogger/backend/TemplateContext;->parser:Lcom/google/common/flogger/parser/MessageParser;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/common/flogger/backend/TemplateContext;->parser:Lcom/google/common/flogger/parser/MessageParser;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/google/common/flogger/backend/TemplateContext;->message:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
