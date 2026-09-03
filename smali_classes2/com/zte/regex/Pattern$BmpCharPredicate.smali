.class interface abstract Lcom/zte/regex/Pattern$BmpCharPredicate;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Lcom/zte/regex/Pattern$CharPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "BmpCharPredicate"
.end annotation


# direct methods
.method public static synthetic lambda$and$0(Lcom/zte/regex/Pattern$BmpCharPredicate;Lcom/zte/regex/Pattern$CharPredicate;I)Z
    .locals 0
    .param p0, "_this"    # Lcom/zte/regex/Pattern$BmpCharPredicate;

    .line 4886
    invoke-interface {p0, p2}, Lcom/zte/regex/Pattern$BmpCharPredicate;->is(I)Z

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

.method public static synthetic lambda$and$1(Lcom/zte/regex/Pattern$BmpCharPredicate;Lcom/zte/regex/Pattern$CharPredicate;I)Z
    .locals 0
    .param p0, "_this"    # Lcom/zte/regex/Pattern$BmpCharPredicate;

    .line 4887
    invoke-interface {p0, p2}, Lcom/zte/regex/Pattern$BmpCharPredicate;->is(I)Z

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

.method public static synthetic lambda$union$2(Lcom/zte/regex/Pattern$BmpCharPredicate;Lcom/zte/regex/Pattern$CharPredicate;I)Z
    .locals 0
    .param p0, "_this"    # Lcom/zte/regex/Pattern$BmpCharPredicate;

    .line 4891
    invoke-interface {p0, p2}, Lcom/zte/regex/Pattern$BmpCharPredicate;->is(I)Z

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

.method public static synthetic lambda$union$3(Lcom/zte/regex/Pattern$BmpCharPredicate;Lcom/zte/regex/Pattern$CharPredicate;I)Z
    .locals 0
    .param p0, "_this"    # Lcom/zte/regex/Pattern$BmpCharPredicate;

    .line 4892
    invoke-interface {p0, p2}, Lcom/zte/regex/Pattern$BmpCharPredicate;->is(I)Z

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

.method public static synthetic lambda$union$4([Lcom/zte/regex/Pattern$CharPredicate;I)Z
    .locals 4

    .line 4896
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 4897
    invoke-interface {v3, p1}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs union([Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 4

    .line 4895
    new-instance v0, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda0;-><init>([Lcom/zte/regex/Pattern$CharPredicate;)V

    .line 4902
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 4903
    instance-of v3, v3, Lcom/zte/regex/Pattern$BmpCharPredicate;

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4906
    :cond_1
    check-cast v0, Lcom/zte/regex/Pattern$BmpCharPredicate;

    return-object v0
.end method


# virtual methods
.method public and(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 4885
    instance-of v0, p1, Lcom/zte/regex/Pattern$BmpCharPredicate;

    if-eqz v0, :cond_0

    .line 4886
    new-instance v0, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda1;-><init>(Lcom/zte/regex/Pattern$BmpCharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)V

    return-object v0

    .line 4887
    :cond_0
    new-instance v0, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda2;-><init>(Lcom/zte/regex/Pattern$BmpCharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)V

    return-object v0
.end method

.method public union(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 4890
    instance-of v0, p1, Lcom/zte/regex/Pattern$BmpCharPredicate;

    if-eqz v0, :cond_0

    .line 4891
    new-instance v0, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda3;-><init>(Lcom/zte/regex/Pattern$BmpCharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)V

    return-object v0

    .line 4892
    :cond_0
    new-instance v0, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda4;-><init>(Lcom/zte/regex/Pattern$BmpCharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)V

    return-object v0
.end method
