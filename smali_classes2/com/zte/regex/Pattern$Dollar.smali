.class final Lcom/zte/regex/Pattern$Dollar;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dollar"
.end annotation


# instance fields
.field multiline:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 3049
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 3050
    iput-boolean p1, p0, Lcom/zte/regex/Pattern$Dollar;->multiline:Z

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 5

    .line 3053
    iget-boolean v0, p1, Lcom/zte/regex/Matcher;->anchoringBounds:Z

    if-eqz v0, :cond_0

    .line 3054
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v0

    .line 3055
    :goto_0
    iget-boolean v1, p0, Lcom/zte/regex/Pattern$Dollar;->multiline:Z

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x0

    if-nez v1, :cond_3

    add-int/lit8 v1, v0, -0x2

    if-ge p2, v1, :cond_1

    return v4

    :cond_1
    if-ne p2, v1, :cond_3

    .line 3059
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, p2, 0x1

    .line 3062
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_3

    return v4

    :cond_3
    const/4 v1, 0x1

    if-ge p2, v0, :cond_8

    .line 3076
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_5

    if-lez p2, :cond_4

    add-int/lit8 v0, p2, -0x1

    .line 3079
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4

    return v4

    .line 3081
    :cond_4
    iget-boolean v0, p0, Lcom/zte/regex/Pattern$Dollar;->multiline:Z

    if-eqz v0, :cond_8

    .line 3082
    iget-object p0, p0, Lcom/zte/regex/Pattern$Dollar;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_5
    if-eq v0, v3, :cond_7

    const/16 v2, 0x85

    if-eq v0, v2, :cond_7

    or-int/2addr v0, v1

    const/16 v2, 0x2029

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    return v4

    .line 3085
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/zte/regex/Pattern$Dollar;->multiline:Z

    if-eqz v0, :cond_8

    .line 3086
    iget-object p0, p0, Lcom/zte/regex/Pattern$Dollar;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 3092
    :cond_8
    iput-boolean v1, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    .line 3095
    iput-boolean v1, p1, Lcom/zte/regex/Matcher;->requireEnd:Z

    .line 3096
    iget-object p0, p0, Lcom/zte/regex/Pattern$Dollar;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 0

    .line 3099
    iget-object p0, p0, Lcom/zte/regex/Pattern$Dollar;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    .line 3100
    iget-boolean p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    return p0
.end method
