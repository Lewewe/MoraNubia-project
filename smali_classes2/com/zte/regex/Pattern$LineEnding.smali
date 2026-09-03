.class final Lcom/zte/regex/Pattern$LineEnding;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LineEnding"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3148
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    .line 3151
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    const/4 v1, 0x1

    if-ge p2, v0, :cond_4

    .line 3152
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    const/16 v3, 0xb

    if-eq v0, v3, :cond_3

    const/16 v3, 0xc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x85

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2028

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2029

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    if-ne v0, v3, :cond_5

    add-int/lit8 v0, p2, 0x1

    .line 3158
    iget v3, p1, Lcom/zte/regex/Matcher;->to:I

    if-ge v0, v3, :cond_1

    .line 3159
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v2, p0, Lcom/zte/regex/Pattern$LineEnding;->next:Lcom/zte/regex/Pattern$Node;

    add-int/lit8 p2, p2, 0x2

    .line 3160
    invoke-virtual {v2, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 3164
    :cond_1
    iput-boolean v1, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    .line 3166
    :cond_2
    iget-object p0, p0, Lcom/zte/regex/Pattern$LineEnding;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, v0, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 3155
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/zte/regex/Pattern$LineEnding;->next:Lcom/zte/regex/Pattern$Node;

    add-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 3169
    :cond_4
    iput-boolean v1, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 1

    .line 3174
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 3175
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    .line 3176
    iget-object p0, p0, Lcom/zte/regex/Pattern$LineEnding;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
