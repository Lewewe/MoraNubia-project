.class final Lcom/zte/regex/Pattern$SliceS;
.super Lcom/zte/regex/Pattern$Slice;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SliceS"
.end annotation


# direct methods
.method constructor <init>([I)V
    .locals 0

    .line 3413
    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern$Slice;-><init>([I)V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 6

    .line 3416
    iget-object v0, p0, Lcom/zte/regex/Pattern$SliceS;->buffer:[I

    const/4 v1, 0x0

    move v2, v1

    .line 3418
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 3419
    iget v3, p1, Lcom/zte/regex/Matcher;->to:I

    const/4 v4, 0x1

    if-lt p2, v3, :cond_0

    .line 3420
    iput-boolean v4, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v1

    .line 3423
    :cond_0
    invoke-static {p3, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 3424
    aget v5, v0, v2

    if-eq v5, v3, :cond_1

    return v1

    .line 3426
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 3427
    iget v3, p1, Lcom/zte/regex/Matcher;->to:I

    if-le p2, v3, :cond_2

    .line 3428
    iput-boolean v4, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3432
    :cond_3
    iget-object p0, p0, Lcom/zte/regex/Pattern$SliceS;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
