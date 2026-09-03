.class Lcom/zte/regex/Pattern$SliceIS;
.super Lcom/zte/regex/Pattern$SliceNode;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SliceIS"
.end annotation


# direct methods
.method constructor <init>([I)V
    .locals 0

    .line 3442
    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern$SliceNode;-><init>([I)V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 7

    .line 3448
    iget-object v0, p0, Lcom/zte/regex/Pattern$SliceIS;->buffer:[I

    const/4 v1, 0x0

    move v2, v1

    .line 3450
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 3451
    iget v3, p1, Lcom/zte/regex/Matcher;->to:I

    const/4 v4, 0x1

    if-lt p2, v3, :cond_0

    .line 3452
    iput-boolean v4, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v1

    .line 3455
    :cond_0
    invoke-static {p3, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 3456
    aget v5, v0, v2

    if-eq v5, v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/zte/regex/Pattern$SliceIS;->toLower(I)I

    move-result v6

    if-eq v5, v6, :cond_1

    return v1

    .line 3458
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 3459
    iget v3, p1, Lcom/zte/regex/Matcher;->to:I

    if-le p2, v3, :cond_2

    .line 3460
    iput-boolean v4, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3464
    :cond_3
    iget-object p0, p0, Lcom/zte/regex/Pattern$SliceIS;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method toLower(I)I
    .locals 0

    .line 3445
    invoke-static {p1}, Lcom/zte/regex/ASCII;->toLower(I)I

    move-result p0

    return p0
.end method
