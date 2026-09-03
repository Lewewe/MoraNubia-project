.class public Lcom/zte/regex/ArraysSupport;
.super Ljava/lang/Object;
.source "ArraysSupport.java"


# static fields
.field public static final SOFT_MAX_ARRAY_LENGTH:I = 0x7ffffff7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hugeLength(II)I
    .locals 3

    add-int v0, p0, p1

    if-ltz v0, :cond_1

    const p0, 0x7ffffff7

    if-gt v0, p0, :cond_0

    return p0

    :cond_0
    return v0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required array length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " + "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is too large"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newLength(III)I
    .locals 1

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p2, p0

    if-lez p2, :cond_0

    const v0, 0x7ffffff7

    if-gt p2, v0, :cond_0

    return p2

    .line 16
    :cond_0
    invoke-static {p0, p1}, Lcom/zte/regex/ArraysSupport;->hugeLength(II)I

    move-result p0

    return p0
.end method
