.class final Lcom/zte/regex/Pattern$Begin;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Begin"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2933
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 2

    .line 2935
    iget-boolean v0, p1, Lcom/zte/regex/Matcher;->anchoringBounds:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2936
    iget v0, p1, Lcom/zte/regex/Matcher;->from:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 2937
    iget-object p0, p0, Lcom/zte/regex/Pattern$Begin;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2938
    iput p2, p1, Lcom/zte/regex/Matcher;->first:I

    .line 2939
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    aput p2, p0, v1

    .line 2940
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p1, p1, Lcom/zte/regex/Matcher;->last:I

    const/4 p2, 0x1

    aput p1, p0, p2

    return p2

    :cond_1
    return v1
.end method
