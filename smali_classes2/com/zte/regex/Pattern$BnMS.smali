.class final Lcom/zte/regex/Pattern$BnMS;
.super Lcom/zte/regex/Pattern$BnM;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BnMS"
.end annotation


# instance fields
.field lengthInChars:I


# direct methods
.method constructor <init>([I[I[ILcom/zte/regex/Pattern$Node;)V
    .locals 1

    .line 4822
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/regex/Pattern$BnM;-><init>([I[I[ILcom/zte/regex/Pattern$Node;)V

    .line 4823
    iget-object p1, p0, Lcom/zte/regex/Pattern$BnMS;->buffer:[I

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget p4, p1, p3

    .line 4824
    iget v0, p0, Lcom/zte/regex/Pattern$BnMS;->lengthInChars:I

    invoke-static {p4}, Ljava/lang/Character;->charCount(I)I

    move-result p4

    add-int/2addr v0, p4

    iput v0, p0, Lcom/zte/regex/Pattern$BnMS;->lengthInChars:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 9

    .line 4828
    iget-object v0, p0, Lcom/zte/regex/Pattern$BnMS;->buffer:[I

    .line 4829
    array-length v1, v0

    .line 4830
    iget v2, p1, Lcom/zte/regex/Matcher;->to:I

    iget v3, p0, Lcom/zte/regex/Pattern$BnMS;->lengthInChars:I

    sub-int/2addr v2, v3

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt p2, v2, :cond_3

    .line 4836
    invoke-static {p3, p2, v1}, Lcom/zte/regex/Pattern;->access$000(Ljava/lang/CharSequence;II)I

    move-result v5

    add-int/lit8 v6, v1, -0x1

    :goto_1
    if-lez v5, :cond_1

    add-int v7, p2, v5

    .line 4838
    invoke-static {p3, v7}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 4839
    aget v8, v0, v6

    if-eq v7, v8, :cond_0

    add-int/lit8 v3, v6, 0x1

    .line 4842
    iget-object v4, p0, Lcom/zte/regex/Pattern$BnMS;->lastOcc:[I

    and-int/lit8 v5, v7, 0x7f

    aget v4, v4, v5

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/zte/regex/Pattern$BnMS;->optoSft:[I

    aget v4, v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4843
    invoke-static {p3, p2, v3}, Lcom/zte/regex/Pattern;->access$000(Ljava/lang/CharSequence;II)I

    move-result v3

    goto :goto_2

    .line 4837
    :cond_0
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    sub-int/2addr v5, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 4848
    :cond_1
    iput p2, p1, Lcom/zte/regex/Matcher;->first:I

    .line 4849
    iget-object v5, p0, Lcom/zte/regex/Pattern$BnMS;->next:Lcom/zte/regex/Pattern$Node;

    iget v6, p0, Lcom/zte/regex/Pattern$BnMS;->lengthInChars:I

    add-int/2addr v6, p2

    invoke-virtual {v5, p1, v6, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4851
    iput p2, p1, Lcom/zte/regex/Matcher;->first:I

    .line 4852
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p2, p1, Lcom/zte/regex/Matcher;->first:I

    aput p2, p0, v3

    .line 4853
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p1, p1, Lcom/zte/regex/Matcher;->last:I

    aput p1, p0, v4

    return v4

    .line 4856
    :cond_2
    invoke-static {p3, p2, v4}, Lcom/zte/regex/Pattern;->access$000(Ljava/lang/CharSequence;II)I

    move-result v3

    :goto_2
    add-int/2addr p2, v3

    goto :goto_0

    .line 4858
    :cond_3
    iput-boolean v4, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v3
.end method
