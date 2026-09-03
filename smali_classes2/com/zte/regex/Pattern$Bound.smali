.class final Lcom/zte/regex/Pattern$Bound;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bound"
.end annotation


# static fields
.field static BOTH:I = 0x3

.field static LEFT:I = 0x1

.field static NONE:I = 0x4

.field static RIGHT:I = 0x2


# instance fields
.field type:I

.field useUWORD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0

    .line 4611
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 4612
    iput p1, p0, Lcom/zte/regex/Pattern$Bound;->type:I

    .line 4613
    iput-boolean p2, p0, Lcom/zte/regex/Pattern$Bound;->useUWORD:Z

    return-void
.end method


# virtual methods
.method check(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)I
    .locals 6

    .line 4624
    iget v0, p1, Lcom/zte/regex/Matcher;->from:I

    .line 4625
    iget v1, p1, Lcom/zte/regex/Matcher;->to:I

    .line 4626
    iget-boolean v2, p1, Lcom/zte/regex/Matcher;->transparentBounds:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4628
    invoke-virtual {p1}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v1

    move v0, v3

    :cond_0
    const/4 v2, 0x6

    const/4 v4, 0x1

    if-le p2, v0, :cond_2

    .line 4631
    invoke-static {p3, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4632
    invoke-virtual {p0, v0}, Lcom/zte/regex/Pattern$Bound;->isWord(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4633
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    add-int/lit8 v0, p2, -0x1

    .line 4634
    invoke-static {p1, v0, p3}, Lcom/zte/regex/Pattern;->access$100(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-ge p2, v1, :cond_4

    .line 4638
    invoke-static {p3, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 4639
    invoke-virtual {p0, v1}, Lcom/zte/regex/Pattern$Bound;->isWord(I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 4640
    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    if-ne p0, v2, :cond_5

    .line 4641
    invoke-static {p1, p2, p3}, Lcom/zte/regex/Pattern;->access$100(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_3
    move v3, v4

    goto :goto_1

    .line 4644
    :cond_4
    iput-boolean v4, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    .line 4646
    iput-boolean v4, p1, Lcom/zte/regex/Matcher;->requireEnd:Z

    :cond_5
    :goto_1
    xor-int p0, v0, v3

    if-eqz p0, :cond_7

    if-eqz v3, :cond_6

    .line 4648
    sget p0, Lcom/zte/regex/Pattern$Bound;->LEFT:I

    goto :goto_2

    :cond_6
    sget p0, Lcom/zte/regex/Pattern$Bound;->RIGHT:I

    goto :goto_2

    :cond_7
    sget p0, Lcom/zte/regex/Pattern$Bound;->NONE:I

    :goto_2
    return p0
.end method

.method isWord(I)Z
    .locals 0

    .line 4617
    iget-boolean p0, p0, Lcom/zte/regex/Pattern$Bound;->useUWORD:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/zte/regex/CharPredicates;->WORD()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result p0

    goto :goto_1

    :cond_0
    const/16 p0, 0x5f

    if-eq p1, p0, :cond_2

    .line 4618
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 2

    .line 4651
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Bound;->check(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)I

    move-result v0

    iget v1, p0, Lcom/zte/regex/Pattern$Bound;->type:I

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/zte/regex/Pattern$Bound;->next:Lcom/zte/regex/Pattern$Node;

    .line 4652
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
