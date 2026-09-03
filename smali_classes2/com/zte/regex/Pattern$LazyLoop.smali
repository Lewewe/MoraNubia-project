.class final Lcom/zte/regex/Pattern$LazyLoop;
.super Lcom/zte/regex/Pattern$Loop;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LazyLoop"
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 4212
    invoke-direct {p0, p1, p2}, Lcom/zte/regex/Pattern$Loop;-><init>(II)V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    .line 4216
    iget-object v0, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->beginIndex:I

    aget v0, v0, v1

    if-le p2, v0, :cond_5

    .line 4217
    iget-object v0, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->countIndex:I

    aget v0, v0, v1

    .line 4218
    iget v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->cmin:I

    if-ge v0, v1, :cond_1

    .line 4219
    iget-object v1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v2, p0, Lcom/zte/regex/Pattern$LazyLoop;->countIndex:I

    add-int/lit8 v3, v0, 0x1

    aput v3, v1, v2

    .line 4220
    iget-object v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->body:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4224
    iget-object p1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget p0, p0, Lcom/zte/regex/Pattern$LazyLoop;->countIndex:I

    aput v0, p1, p0

    :cond_0
    return p2

    .line 4227
    :cond_1
    iget-object v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 4229
    :cond_2
    iget v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->cmax:I

    if-ge v0, v1, :cond_4

    .line 4230
    iget-object v1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v2, p0, Lcom/zte/regex/Pattern$LazyLoop;->countIndex:I

    add-int/lit8 v3, v0, 0x1

    aput v3, v1, v2

    .line 4231
    iget-object v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->body:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 4235
    iget-object p1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget p0, p0, Lcom/zte/regex/Pattern$LazyLoop;->countIndex:I

    aput v0, p1, p0

    :cond_3
    return p2

    :cond_4
    const/4 p0, 0x0

    return p0

    .line 4240
    :cond_5
    iget-object p0, p0, Lcom/zte/regex/Pattern$LazyLoop;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method matchInit(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    .line 4243
    iget-object v0, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->countIndex:I

    aget v0, v0, v1

    .line 4245
    iget v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->cmin:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 4246
    iget-object v1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v3, p0, Lcom/zte/regex/Pattern$LazyLoop;->countIndex:I

    aput v2, v1, v3

    .line 4247
    iget-object v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->body:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 4248
    :cond_0
    iget-object v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4250
    :cond_1
    iget v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->cmax:I

    if-lez v1, :cond_2

    .line 4251
    iget-object v1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v3, p0, Lcom/zte/regex/Pattern$LazyLoop;->countIndex:I

    aput v2, v1, v3

    .line 4252
    iget-object v1, p0, Lcom/zte/regex/Pattern$LazyLoop;->body:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 4254
    :goto_0
    iget-object p1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget p0, p0, Lcom/zte/regex/Pattern$LazyLoop;->countIndex:I

    aput v0, p1, p0

    return v2
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 0

    const/4 p0, 0x0

    .line 4258
    iput-boolean p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 4259
    iput-boolean p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    return p0
.end method
