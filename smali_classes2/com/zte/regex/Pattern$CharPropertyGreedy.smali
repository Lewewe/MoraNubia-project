.class Lcom/zte/regex/Pattern$CharPropertyGreedy;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharPropertyGreedy"
.end annotation


# instance fields
.field final cmin:I

.field final predicate:Lcom/zte/regex/Pattern$CharPredicate;


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$CharProperty;I)V
    .locals 0

    .line 3528
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 3529
    iget-object p1, p1, Lcom/zte/regex/Pattern$CharProperty;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    iput-object p1, p0, Lcom/zte/regex/Pattern$CharPropertyGreedy;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    .line 3530
    iput p2, p0, Lcom/zte/regex/Pattern$CharPropertyGreedy;->cmin:I

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 8

    .line 3535
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    const/4 v1, 0x0

    move v2, p2

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_2

    .line 3538
    invoke-static {p3, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 3539
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int v7, v2, v6

    if-le v7, v0, :cond_0

    .line 3542
    iput-boolean v4, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    .line 3543
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v4

    .line 3546
    :cond_0
    iget-object v7, p0, Lcom/zte/regex/Pattern$CharPropertyGreedy;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    invoke-interface {v7, v5}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v2, v0, :cond_3

    .line 3552
    iput-boolean v4, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    .line 3554
    :cond_3
    :goto_2
    iget v0, p0, Lcom/zte/regex/Pattern$CharPropertyGreedy;->cmin:I

    if-lt v3, v0, :cond_6

    .line 3555
    iget-object v0, p0, Lcom/zte/regex/Pattern$CharPropertyGreedy;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, v2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v4

    .line 3557
    :cond_4
    iget v0, p0, Lcom/zte/regex/Pattern$CharPropertyGreedy;->cmin:I

    if-ne v3, v0, :cond_5

    return v1

    .line 3560
    :cond_5
    invoke-static {p3, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3562
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    return v1
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 2

    .line 3569
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    iget v1, p0, Lcom/zte/regex/Pattern$CharPropertyGreedy;->cmin:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 3570
    iget-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    if-eqz v0, :cond_0

    .line 3571
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    const v1, 0x7fffffff

    add-int/2addr v0, v1

    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    :cond_0
    const/4 v0, 0x0

    .line 3573
    iput-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    .line 3574
    iget-object p0, p0, Lcom/zte/regex/Pattern$CharPropertyGreedy;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
