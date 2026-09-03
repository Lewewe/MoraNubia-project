.class Lcom/zte/regex/Pattern$NotBehind;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotBehind"
.end annotation


# instance fields
.field cond:Lcom/zte/regex/Pattern$Node;

.field rmax:I

.field rmin:I


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;II)V
    .locals 0

    .line 4537
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 4538
    iput-object p1, p0, Lcom/zte/regex/Pattern$NotBehind;->cond:Lcom/zte/regex/Pattern$Node;

    .line 4539
    iput p2, p0, Lcom/zte/regex/Pattern$NotBehind;->rmax:I

    .line 4540
    iput p3, p0, Lcom/zte/regex/Pattern$NotBehind;->rmin:I

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 6

    .line 4544
    iget v0, p1, Lcom/zte/regex/Matcher;->lookbehindTo:I

    .line 4545
    iget v1, p1, Lcom/zte/regex/Matcher;->from:I

    .line 4547
    iget-boolean v2, p1, Lcom/zte/regex/Matcher;->transparentBounds:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4548
    iget v2, p1, Lcom/zte/regex/Matcher;->from:I

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4549
    :goto_0
    iget v4, p0, Lcom/zte/regex/Pattern$NotBehind;->rmax:I

    sub-int v4, p2, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4550
    iput p2, p1, Lcom/zte/regex/Matcher;->lookbehindTo:I

    .line 4552
    iget-boolean v4, p1, Lcom/zte/regex/Matcher;->transparentBounds:Z

    if-eqz v4, :cond_1

    .line 4553
    iput v3, p1, Lcom/zte/regex/Matcher;->from:I

    .line 4554
    :cond_1
    iget v4, p0, Lcom/zte/regex/Pattern$NotBehind;->rmin:I

    sub-int v4, p2, v4

    move v5, v3

    :goto_1
    if-nez v5, :cond_2

    if-lt v4, v2, :cond_2

    .line 4555
    iget-object v5, p0, Lcom/zte/regex/Pattern$NotBehind;->cond:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v5, p1, v4, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4558
    :cond_2
    iput v1, p1, Lcom/zte/regex/Matcher;->from:I

    .line 4559
    iput v0, p1, Lcom/zte/regex/Matcher;->lookbehindTo:I

    if-nez v5, :cond_3

    .line 4560
    iget-object p0, p0, Lcom/zte/regex/Pattern$NotBehind;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method
