.class Lcom/zte/regex/Pattern$CharProperty;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharProperty"
.end annotation


# instance fields
.field final predicate:Lcom/zte/regex/Pattern$CharPredicate;


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$CharPredicate;)V
    .locals 0

    .line 3187
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 3188
    iput-object p1, p0, Lcom/zte/regex/Pattern$CharProperty;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    .line 3191
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p2, v0, :cond_1

    .line 3192
    invoke-static {p3, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3193
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 3194
    iget v3, p1, Lcom/zte/regex/Matcher;->to:I

    if-gt p2, v3, :cond_1

    .line 3195
    iget-object v3, p0, Lcom/zte/regex/Pattern$CharProperty;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    invoke-interface {v3, v0}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zte/regex/Pattern$CharProperty;->next:Lcom/zte/regex/Pattern$Node;

    .line 3196
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 3199
    :cond_1
    iput-boolean v2, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v1
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 1

    .line 3203
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 3204
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    .line 3205
    iget-object p0, p0, Lcom/zte/regex/Pattern$CharProperty;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
