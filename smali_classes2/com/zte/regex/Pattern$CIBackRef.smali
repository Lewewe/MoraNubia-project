.class Lcom/zte/regex/Pattern$CIBackRef;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CIBackRef"
.end annotation


# instance fields
.field doUnicodeCase:Z

.field groupIndex:I


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .line 4306
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    add-int/2addr p1, p1

    .line 4307
    iput p1, p0, Lcom/zte/regex/Pattern$CIBackRef;->groupIndex:I

    .line 4308
    iput-boolean p2, p0, Lcom/zte/regex/Pattern$CIBackRef;->doUnicodeCase:Z

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 9

    .line 4311
    iget-object v0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v1, p0, Lcom/zte/regex/Pattern$CIBackRef;->groupIndex:I

    aget v0, v0, v1

    .line 4312
    iget-object v1, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v2, p0, Lcom/zte/regex/Pattern$CIBackRef;->groupIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget v1, v1, v2

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    if-gez v0, :cond_0

    return v2

    :cond_0
    add-int v4, p2, v1

    .line 4321
    iget v5, p1, Lcom/zte/regex/Matcher;->to:I

    if-le v4, v5, :cond_1

    .line 4322
    iput-boolean v3, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v2

    :cond_1
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 4330
    invoke-static {p3, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 4331
    invoke-static {p3, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 4333
    iget-boolean v7, p0, Lcom/zte/regex/Pattern$CIBackRef;->doUnicodeCase:Z

    if-eqz v7, :cond_2

    .line 4334
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v7

    .line 4335
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 4337
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v7

    .line 4338
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v8

    if-eq v7, v8, :cond_3

    return v2

    .line 4341
    :cond_2
    invoke-static {v5}, Lcom/zte/regex/ASCII;->toLower(I)I

    move-result v7

    invoke-static {v6}, Lcom/zte/regex/ASCII;->toLower(I)I

    move-result v8

    if-eq v7, v8, :cond_3

    return v2

    .line 4345
    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr p2, v5

    .line 4346
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4349
    :cond_4
    iget-object p0, p0, Lcom/zte/regex/Pattern$CIBackRef;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, v4, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 1

    const/4 v0, 0x0

    .line 4352
    iput-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 4353
    iget-object p0, p0, Lcom/zte/regex/Pattern$CIBackRef;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
