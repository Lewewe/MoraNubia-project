.class final Lcom/zte/regex/Pattern$SliceU;
.super Lcom/zte/regex/Pattern$SliceNode;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SliceU"
.end annotation


# direct methods
.method constructor <init>([I)V
    .locals 0

    .line 3388
    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern$SliceNode;-><init>([I)V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 6

    .line 3391
    iget-object v0, p0, Lcom/zte/regex/Pattern$SliceU;->buffer:[I

    .line 3392
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    add-int v4, p2, v3

    .line 3394
    iget v5, p1, Lcom/zte/regex/Matcher;->to:I

    if-lt v4, v5, :cond_0

    const/4 p0, 0x1

    .line 3395
    iput-boolean p0, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v2

    .line 3398
    :cond_0
    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 3399
    aget v5, v0, v3

    if-eq v5, v4, :cond_1

    .line 3400
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v4

    if-eq v5, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3403
    :cond_2
    iget-object p0, p0, Lcom/zte/regex/Pattern$SliceU;->next:Lcom/zte/regex/Pattern$Node;

    add-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
