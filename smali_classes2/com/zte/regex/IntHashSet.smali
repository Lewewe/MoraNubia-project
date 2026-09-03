.class Lcom/zte/regex/IntHashSet;
.super Ljava/lang/Object;
.source "IntHashSet.java"


# instance fields
.field private entries:[I

.field private hashes:[I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/zte/regex/IntHashSet;->pos:I

    const/16 v0, 0x20

    .line 15
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zte/regex/IntHashSet;->entries:[I

    const/16 v1, 0x9

    .line 16
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zte/regex/IntHashSet;->hashes:[I

    const/4 v1, -0x1

    .line 17
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 18
    iget-object p0, p0, Lcom/zte/regex/IntHashSet;->hashes:[I

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private expand()V
    .locals 8

    .line 56
    iget-object v0, p0, Lcom/zte/regex/IntHashSet;->entries:[I

    .line 57
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 58
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    or-int/lit8 v2, v2, 0x1

    .line 59
    new-array v3, v2, [I

    const/4 v4, -0x1

    .line 60
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([II)V

    .line 61
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    const/4 v4, 0x0

    .line 62
    :goto_0
    iget v5, p0, Lcom/zte/regex/IntHashSet;->pos:I

    if-ge v4, v5, :cond_0

    .line 63
    aget v5, v0, v4

    .line 64
    rem-int v6, v5, v2

    .line 65
    aget v7, v3, v6

    .line 66
    aput v4, v3, v6

    add-int/lit8 v6, v4, 0x1

    .line 67
    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x2

    .line 68
    aput v7, v1, v6

    goto :goto_0

    .line 70
    :cond_0
    iput-object v1, p0, Lcom/zte/regex/IntHashSet;->entries:[I

    .line 71
    iput-object v3, p0, Lcom/zte/regex/IntHashSet;->hashes:[I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 5

    .line 32
    iget-object v0, p0, Lcom/zte/regex/IntHashSet;->hashes:[I

    array-length v1, v0

    rem-int v1, p1, v1

    .line 33
    aget v0, v0, v1

    move v2, v0

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 38
    iget-object v3, p0, Lcom/zte/regex/IntHashSet;->entries:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    aget v2, v3, v2

    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/zte/regex/IntHashSet;->hashes:[I

    iget v3, p0, Lcom/zte/regex/IntHashSet;->pos:I

    aput v3, v2, v1

    .line 43
    iget-object v1, p0, Lcom/zte/regex/IntHashSet;->entries:[I

    add-int/lit8 v2, v3, 0x1

    aput p1, v1, v3

    add-int/lit8 v3, v3, 0x2

    .line 44
    iput v3, p0, Lcom/zte/regex/IntHashSet;->pos:I

    aput v0, v1, v2

    .line 45
    array-length p1, v1

    if-ne v3, p1, :cond_2

    .line 46
    invoke-direct {p0}, Lcom/zte/regex/IntHashSet;->expand()V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/zte/regex/IntHashSet;->entries:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 51
    iget-object v0, p0, Lcom/zte/regex/IntHashSet;->hashes:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/zte/regex/IntHashSet;->pos:I

    return-void
.end method

.method public contains(I)Z
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/zte/regex/IntHashSet;->hashes:[I

    array-length v1, v0

    rem-int v1, p1, v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 24
    iget-object v1, p0, Lcom/zte/regex/IntHashSet;->entries:[I

    aget v2, v1, v0

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    aget v0, v1, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
