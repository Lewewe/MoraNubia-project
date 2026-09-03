.class Lcom/zte/regex/Pattern$Behind;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Behind"
.end annotation


# instance fields
.field cond:Lcom/zte/regex/Pattern$Node;

.field rmax:I

.field rmin:I


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;II)V
    .locals 0

    .line 4470
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 4471
    iput-object p1, p0, Lcom/zte/regex/Pattern$Behind;->cond:Lcom/zte/regex/Pattern$Node;

    .line 4472
    iput p2, p0, Lcom/zte/regex/Pattern$Behind;->rmax:I

    .line 4473
    iput p3, p0, Lcom/zte/regex/Pattern$Behind;->rmin:I

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 6

    .line 4477
    iget v0, p1, Lcom/zte/regex/Matcher;->from:I

    .line 4479
    iget-boolean v1, p1, Lcom/zte/regex/Matcher;->transparentBounds:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4480
    iget v1, p1, Lcom/zte/regex/Matcher;->from:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4481
    :goto_0
    iget v3, p0, Lcom/zte/regex/Pattern$Behind;->rmax:I

    sub-int v3, p2, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4483
    iget v3, p1, Lcom/zte/regex/Matcher;->lookbehindTo:I

    .line 4484
    iput p2, p1, Lcom/zte/regex/Matcher;->lookbehindTo:I

    .line 4486
    iget-boolean v4, p1, Lcom/zte/regex/Matcher;->transparentBounds:Z

    if-eqz v4, :cond_1

    .line 4487
    iput v2, p1, Lcom/zte/regex/Matcher;->from:I

    .line 4488
    :cond_1
    iget v4, p0, Lcom/zte/regex/Pattern$Behind;->rmin:I

    sub-int v4, p2, v4

    move v5, v2

    :goto_1
    if-nez v5, :cond_2

    if-lt v4, v1, :cond_2

    .line 4489
    iget-object v5, p0, Lcom/zte/regex/Pattern$Behind;->cond:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v5, p1, v4, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4491
    :cond_2
    iput v0, p1, Lcom/zte/regex/Matcher;->from:I

    .line 4492
    iput v3, p1, Lcom/zte/regex/Matcher;->lookbehindTo:I

    if-eqz v5, :cond_3

    .line 4493
    iget-object p0, p0, Lcom/zte/regex/Pattern$Behind;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method
