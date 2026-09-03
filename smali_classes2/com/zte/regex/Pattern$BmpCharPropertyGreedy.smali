.class final Lcom/zte/regex/Pattern$BmpCharPropertyGreedy;
.super Lcom/zte/regex/Pattern$CharPropertyGreedy;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BmpCharPropertyGreedy"
.end annotation


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$BmpCharProperty;I)V
    .locals 0

    .line 3581
    invoke-direct {p0, p1, p2}, Lcom/zte/regex/Pattern$CharPropertyGreedy;-><init>(Lcom/zte/regex/Pattern$CharProperty;I)V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 5

    .line 3586
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge p2, v0, :cond_0

    .line 3587
    iget-object v3, p0, Lcom/zte/regex/Pattern$BmpCharPropertyGreedy;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {v3, v4}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-lt p2, v0, :cond_1

    .line 3591
    iput-boolean v3, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    .line 3593
    :cond_1
    :goto_1
    iget v0, p0, Lcom/zte/regex/Pattern$BmpCharPropertyGreedy;->cmin:I

    if-lt v2, v0, :cond_3

    .line 3594
    iget-object v0, p0, Lcom/zte/regex/Pattern$BmpCharPropertyGreedy;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    return v1
.end method
