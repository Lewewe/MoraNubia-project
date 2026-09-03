.class final Lcom/zte/regex/Pattern$UnixDollar;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnixDollar"
.end annotation


# instance fields
.field multiline:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 3110
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 3111
    iput-boolean p1, p0, Lcom/zte/regex/Pattern$UnixDollar;->multiline:Z

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 5

    .line 3114
    iget-boolean v0, p1, Lcom/zte/regex/Matcher;->anchoringBounds:Z

    if-eqz v0, :cond_0

    .line 3115
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-ge p2, v0, :cond_3

    .line 3117
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 3121
    iget-boolean v2, p0, Lcom/zte/regex/Pattern$UnixDollar;->multiline:Z

    if-nez v2, :cond_1

    sub-int/2addr v0, v1

    if-eq p2, v0, :cond_1

    return v4

    :cond_1
    if-eqz v2, :cond_3

    .line 3126
    iget-object p0, p0, Lcom/zte/regex/Pattern$UnixDollar;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    return v4

    .line 3133
    :cond_3
    iput-boolean v1, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    .line 3136
    iput-boolean v1, p1, Lcom/zte/regex/Matcher;->requireEnd:Z

    .line 3137
    iget-object p0, p0, Lcom/zte/regex/Pattern$UnixDollar;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 0

    .line 3140
    iget-object p0, p0, Lcom/zte/regex/Pattern$UnixDollar;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    .line 3141
    iget-boolean p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    return p0
.end method
