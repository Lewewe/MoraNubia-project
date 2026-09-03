.class Lcom/zte/regex/Pattern$GraphemeBound;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GraphemeBound"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3294
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    .line 3296
    iget v0, p1, Lcom/zte/regex/Matcher;->from:I

    .line 3297
    iget v1, p1, Lcom/zte/regex/Matcher;->to:I

    .line 3298
    iget-boolean v2, p1, Lcom/zte/regex/Matcher;->transparentBounds:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3300
    invoke-virtual {p1}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v1

    move v0, v3

    :cond_0
    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ge p2, v1, :cond_3

    add-int/lit8 v0, p2, -0x1

    .line 3305
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    .line 3308
    :cond_2
    iget v0, p1, Lcom/zte/regex/Matcher;->last:I

    invoke-static {p3, v0, v1}, Lcom/zte/regex/Grapheme;->nextBoundary(Ljava/lang/CharSequence;II)I

    move-result v0

    if-le v0, p2, :cond_4

    return v3

    :cond_3
    const/4 v0, 0x1

    .line 3312
    iput-boolean v0, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    .line 3313
    iput-boolean v0, p1, Lcom/zte/regex/Matcher;->requireEnd:Z

    .line 3315
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/zte/regex/Pattern$GraphemeBound;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
