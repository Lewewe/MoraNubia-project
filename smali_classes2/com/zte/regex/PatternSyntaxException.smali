.class public Lcom/zte/regex/PatternSyntaxException;
.super Ljava/lang/IllegalArgumentException;
.source "PatternSyntaxException.java"


# static fields
.field private static final serialVersionUID:J = -0x35a1f4cf3fc7bfd2L


# instance fields
.field private final desc:Ljava/lang/String;

.field private final index:I

.field private final pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/zte/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/zte/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/zte/regex/PatternSyntaxException;->index:I

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/zte/regex/PatternSyntaxException;->index:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/zte/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lcom/zte/regex/PatternSyntaxException;->index:I

    if-ltz v1, :cond_0

    .line 78
    const-string v1, " near index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lcom/zte/regex/PatternSyntaxException;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/zte/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Lcom/zte/regex/PatternSyntaxException;->index:I

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/zte/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 84
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 85
    :goto_0
    iget v2, p0, Lcom/zte/regex/PatternSyntaxException;->index:I

    if-ge v1, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5e

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    return-object p0
.end method
