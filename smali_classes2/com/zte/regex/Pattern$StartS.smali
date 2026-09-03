.class final Lcom/zte/regex/Pattern$StartS;
.super Lcom/zte/regex/Pattern$Start;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StartS"
.end annotation


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;)V
    .locals 0

    .line 2896
    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern$Start;-><init>(Lcom/zte/regex/Pattern$Node;)V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 5

    .line 2899
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    iget v1, p0, Lcom/zte/regex/Pattern$StartS;->minLength:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p2, v0, :cond_0

    .line 2900
    iput-boolean v2, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v1

    .line 2903
    :cond_0
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    iget v3, p0, Lcom/zte/regex/Pattern$StartS;->minLength:I

    sub-int/2addr v0, v3

    :goto_0
    if-gt p2, v0, :cond_4

    .line 2906
    iget-object v3, p0, Lcom/zte/regex/Pattern$StartS;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v3, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2907
    iput p2, p1, Lcom/zte/regex/Matcher;->first:I

    .line 2908
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p2, p1, Lcom/zte/regex/Matcher;->first:I

    aput p2, p0, v1

    .line 2909
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p1, p1, Lcom/zte/regex/Matcher;->last:I

    aput p1, p0, v2

    return v2

    :cond_1
    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p2, 0x1

    .line 2916
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2917
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2918
    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_3
    move p2, v3

    goto :goto_0

    .line 2923
    :cond_4
    :goto_1
    iput-boolean v2, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v1
.end method
