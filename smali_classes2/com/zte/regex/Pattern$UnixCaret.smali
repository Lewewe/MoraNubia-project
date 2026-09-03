.class final Lcom/zte/regex/Pattern$UnixCaret;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnixCaret"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2999
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    .line 3001
    iget v0, p1, Lcom/zte/regex/Matcher;->from:I

    .line 3002
    iget v1, p1, Lcom/zte/regex/Matcher;->to:I

    .line 3003
    iget-boolean v2, p1, Lcom/zte/regex/Matcher;->anchoringBounds:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3005
    invoke-virtual {p1}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v1

    move v0, v3

    :cond_0
    if-ne p2, v1, :cond_1

    const/4 p0, 0x1

    .line 3009
    iput-boolean p0, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v3

    :cond_1
    if-le p2, v0, :cond_2

    add-int/lit8 v0, p2, -0x1

    .line 3013
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    return v3

    .line 3018
    :cond_2
    iget-object p0, p0, Lcom/zte/regex/Pattern$UnixCaret;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
