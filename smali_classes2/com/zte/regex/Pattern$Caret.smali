.class final Lcom/zte/regex/Pattern$Caret;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Caret"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2968
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 6

    .line 2970
    iget v0, p1, Lcom/zte/regex/Matcher;->from:I

    .line 2971
    iget v1, p1, Lcom/zte/regex/Matcher;->to:I

    .line 2972
    iget-boolean v2, p1, Lcom/zte/regex/Matcher;->anchoringBounds:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2974
    invoke-virtual {p1}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v1

    move v0, v3

    :cond_0
    if-ne p2, v1, :cond_1

    const/4 p0, 0x1

    .line 2978
    iput-boolean p0, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v3

    :cond_1
    if-le p2, v0, :cond_3

    add-int/lit8 v0, p2, -0x1

    .line 2982
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    or-int/lit8 v4, v0, 0x1

    const/16 v5, 0x2029

    if-eq v4, v5, :cond_2

    const/16 v4, 0x85

    if-eq v0, v4, :cond_2

    return v3

    :cond_2
    if-ne v0, v1, :cond_3

    .line 2989
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    return v3

    .line 2992
    :cond_3
    iget-object p0, p0, Lcom/zte/regex/Pattern$Caret;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
