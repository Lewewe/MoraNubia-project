.class Lcom/zte/regex/Pattern$BmpCharProperty;
.super Lcom/zte/regex/Pattern$CharProperty;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BmpCharProperty"
.end annotation


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$BmpCharPredicate;)V
    .locals 0

    .line 3215
    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern$CharProperty;-><init>(Lcom/zte/regex/Pattern$CharPredicate;)V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    .line 3218
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p2, v0, :cond_1

    .line 3219
    iget-object v0, p0, Lcom/zte/regex/Pattern$BmpCharProperty;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {v0, v3}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zte/regex/Pattern$BmpCharProperty;->next:Lcom/zte/regex/Pattern$Node;

    add-int/2addr p2, v2

    .line 3220
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 3222
    :cond_1
    iput-boolean v2, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v1
.end method
