.class final Lcom/zte/regex/Pattern$First;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "First"
.end annotation


# instance fields
.field atom:Lcom/zte/regex/Pattern$Node;


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;)V
    .locals 0

    .line 4365
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 4366
    invoke-static {p1}, Lcom/zte/regex/Pattern$BnM;->optimize(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern$First;->atom:Lcom/zte/regex/Pattern$Node;

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    .line 4369
    iget-object v0, p0, Lcom/zte/regex/Pattern$First;->atom:Lcom/zte/regex/Pattern$Node;

    instance-of v1, v0, Lcom/zte/regex/Pattern$BnM;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4370
    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zte/regex/Pattern$First;->next:Lcom/zte/regex/Pattern$Node;

    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    .line 4371
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 4374
    :cond_1
    :goto_0
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    if-le p2, v0, :cond_2

    .line 4375
    iput-boolean v3, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v2

    .line 4378
    :cond_2
    iget-object v0, p0, Lcom/zte/regex/Pattern$First;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4379
    iget-object p0, p0, Lcom/zte/regex/Pattern$First;->next:Lcom/zte/regex/Pattern$Node;

    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 4381
    :cond_3
    invoke-static {p3, p2, v3}, Lcom/zte/regex/Pattern;->access$000(Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/2addr p2, v0

    .line 4382
    iget v0, p1, Lcom/zte/regex/Matcher;->first:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/zte/regex/Matcher;->first:I

    goto :goto_0
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 1

    .line 4386
    iget-object v0, p0, Lcom/zte/regex/Pattern$First;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    const/4 v0, 0x0

    .line 4387
    iput-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 4388
    iput-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    .line 4389
    iget-object p0, p0, Lcom/zte/regex/Pattern$First;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
