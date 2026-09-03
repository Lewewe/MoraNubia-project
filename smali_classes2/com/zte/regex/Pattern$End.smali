.class final Lcom/zte/regex/Pattern$End;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "End"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2952
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 1

    .line 2954
    iget-boolean v0, p1, Lcom/zte/regex/Matcher;->anchoringBounds:Z

    if-eqz v0, :cond_0

    .line 2955
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v0

    :goto_0
    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 2957
    iput-boolean v0, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    .line 2958
    iget-object p0, p0, Lcom/zte/regex/Pattern$End;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
