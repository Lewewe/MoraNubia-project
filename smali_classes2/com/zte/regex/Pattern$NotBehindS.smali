.class final Lcom/zte/regex/Pattern$NotBehindS;
.super Lcom/zte/regex/Pattern$NotBehind;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NotBehindS"
.end annotation


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;II)V
    .locals 0

    .line 4570
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$NotBehind;-><init>(Lcom/zte/regex/Pattern$Node;II)V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 7

    .line 4573
    iget v0, p0, Lcom/zte/regex/Pattern$NotBehindS;->rmax:I

    neg-int v0, v0

    invoke-static {p3, p2, v0}, Lcom/zte/regex/Pattern;->access$000(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 4574
    iget v1, p0, Lcom/zte/regex/Pattern$NotBehindS;->rmin:I

    neg-int v1, v1

    invoke-static {p3, p2, v1}, Lcom/zte/regex/Pattern;->access$000(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 4575
    iget v2, p1, Lcom/zte/regex/Matcher;->from:I

    .line 4576
    iget v3, p1, Lcom/zte/regex/Matcher;->lookbehindTo:I

    .line 4578
    iget-boolean v4, p1, Lcom/zte/regex/Matcher;->transparentBounds:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 4579
    iget v4, p1, Lcom/zte/regex/Matcher;->from:I

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    sub-int v0, p2, v0

    .line 4580
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4581
    iput p2, p1, Lcom/zte/regex/Matcher;->lookbehindTo:I

    .line 4583
    iget-boolean v4, p1, Lcom/zte/regex/Matcher;->transparentBounds:Z

    if-eqz v4, :cond_1

    .line 4584
    iput v5, p1, Lcom/zte/regex/Matcher;->from:I

    :cond_1
    sub-int v1, p2, v1

    move v4, v5

    :goto_1
    const/4 v6, 0x1

    if-nez v4, :cond_3

    if-lt v1, v0, :cond_3

    .line 4588
    iget-object v4, p0, Lcom/zte/regex/Pattern$NotBehindS;->cond:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v4, p1, v1, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v4

    if-le v1, v0, :cond_2

    const/4 v6, -0x1

    .line 4587
    invoke-static {p3, v1, v6}, Lcom/zte/regex/Pattern;->access$000(Ljava/lang/CharSequence;II)I

    move-result v6

    :cond_2
    sub-int/2addr v1, v6

    goto :goto_1

    .line 4591
    :cond_3
    iput v2, p1, Lcom/zte/regex/Matcher;->from:I

    .line 4592
    iput v3, p1, Lcom/zte/regex/Matcher;->lookbehindTo:I

    if-nez v4, :cond_4

    .line 4593
    iget-object p0, p0, Lcom/zte/regex/Pattern$NotBehindS;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v5, v6

    :cond_4
    return v5
.end method
