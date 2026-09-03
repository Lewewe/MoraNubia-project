.class interface abstract Lcom/zte/regex/Pattern$CharPredicate;
.super Ljava/lang/Object;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CharPredicate"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$and$0(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;I)Z
    .locals 0
    .param p0, "_this"    # Lcom/zte/regex/Pattern$CharPredicate;

    .line 4868
    invoke-interface {p0, p2}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$negate$3(Lcom/zte/regex/Pattern$CharPredicate;I)Z
    .locals 0
    .param p0, "_this"    # Lcom/zte/regex/Pattern$CharPredicate;

    .line 4878
    invoke-interface {p0, p1}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$union$1(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;I)Z
    .locals 0
    .param p0, "_this"    # Lcom/zte/regex/Pattern$CharPredicate;

    .line 4871
    invoke-interface {p0, p2}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic lambda$union$2(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;I)Z
    .locals 0
    .param p0, "_this"    # Lcom/zte/regex/Pattern$CharPredicate;

    .line 4875
    invoke-interface {p0, p3}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p3}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p2, p3}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public and(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 4868
    new-instance v0, Lcom/zte/regex/Pattern$CharPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$CharPredicate$$ExternalSyntheticLambda2;-><init>(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)V

    return-object v0
.end method

.method public abstract is(I)Z
.end method

.method public negate()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 4878
    new-instance v0, Lcom/zte/regex/Pattern$CharPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/zte/regex/Pattern$CharPredicate$$ExternalSyntheticLambda0;-><init>(Lcom/zte/regex/Pattern$CharPredicate;)V

    return-object v0
.end method

.method public union(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 4871
    new-instance v0, Lcom/zte/regex/Pattern$CharPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$CharPredicate$$ExternalSyntheticLambda1;-><init>(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)V

    return-object v0
.end method

.method public union(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 4875
    new-instance v0, Lcom/zte/regex/Pattern$CharPredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/regex/Pattern$CharPredicate$$ExternalSyntheticLambda3;-><init>(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)V

    return-object v0
.end method
