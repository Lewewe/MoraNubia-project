.class Lcom/zte/regex/Pattern$BackRef;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackRef"
.end annotation


# instance fields
.field groupIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 4271
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    add-int/2addr p1, p1

    .line 4272
    iput p1, p0, Lcom/zte/regex/Pattern$BackRef;->groupIndex:I

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 7

    .line 4275
    iget-object v0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v1, p0, Lcom/zte/regex/Pattern$BackRef;->groupIndex:I

    aget v0, v0, v1

    .line 4276
    iget-object v1, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v2, p0, Lcom/zte/regex/Pattern$BackRef;->groupIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget v1, v1, v2

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    if-gez v0, :cond_0

    return v2

    :cond_0
    add-int v4, p2, v1

    .line 4284
    iget v5, p1, Lcom/zte/regex/Matcher;->to:I

    if-le v4, v5, :cond_1

    .line 4285
    iput-boolean v3, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v2

    :cond_1
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    add-int v5, p2, v3

    .line 4291
    invoke-interface {p3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int v6, v0, v3

    invoke-interface {p3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4294
    :cond_3
    iget-object p0, p0, Lcom/zte/regex/Pattern$BackRef;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, v4, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 1

    const/4 v0, 0x0

    .line 4297
    iput-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 4298
    iget-object p0, p0, Lcom/zte/regex/Pattern$BackRef;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
