.class final Lcom/zte/regex/Pattern$BitClass;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Lcom/zte/regex/Pattern$BmpCharPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitClass"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final bits:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2748
    const-class v0, Lcom/zte/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 2750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 2751
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/zte/regex/Pattern$BitClass;->bits:[Z

    return-void
.end method


# virtual methods
.method add(II)Lcom/zte/regex/Pattern$BitClass;
    .locals 2

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2756
    invoke-static {p1}, Lcom/zte/regex/ASCII;->isAscii(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2757
    iget-object p2, p0, Lcom/zte/regex/Pattern$BitClass;->bits:[Z

    invoke-static {p1}, Lcom/zte/regex/ASCII;->toUpper(I)I

    move-result v0

    aput-boolean v1, p2, v0

    .line 2758
    iget-object p2, p0, Lcom/zte/regex/Pattern$BitClass;->bits:[Z

    invoke-static {p1}, Lcom/zte/regex/ASCII;->toLower(I)I

    move-result v0

    aput-boolean v1, p2, v0

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_1

    .line 2760
    iget-object p2, p0, Lcom/zte/regex/Pattern$BitClass;->bits:[Z

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    aput-boolean v1, p2, v0

    .line 2761
    iget-object p2, p0, Lcom/zte/regex/Pattern$BitClass;->bits:[Z

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    aput-boolean v1, p2, v0

    .line 2764
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/zte/regex/Pattern$BitClass;->bits:[Z

    aput-boolean v1, p2, p1

    return-object p0
.end method

.method public is(I)Z
    .locals 1

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 2768
    iget-object p0, p0, Lcom/zte/regex/Pattern$BitClass;->bits:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
