.class final Lcom/zte/regex/Pattern$Branch;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Branch"
.end annotation


# instance fields
.field atoms:[Lcom/zte/regex/Pattern$Node;

.field conn:Lcom/zte/regex/Pattern$Node;

.field size:I


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Node;)V
    .locals 2

    .line 3979
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    const/4 v0, 0x2

    .line 3976
    new-array v1, v0, [Lcom/zte/regex/Pattern$Node;

    iput-object v1, p0, Lcom/zte/regex/Pattern$Branch;->atoms:[Lcom/zte/regex/Pattern$Node;

    .line 3977
    iput v0, p0, Lcom/zte/regex/Pattern$Branch;->size:I

    .line 3980
    iput-object p3, p0, Lcom/zte/regex/Pattern$Branch;->conn:Lcom/zte/regex/Pattern$Node;

    const/4 p0, 0x0

    .line 3981
    aput-object p1, v1, p0

    const/4 p0, 0x1

    .line 3982
    aput-object p2, v1, p0

    return-void
.end method


# virtual methods
.method add(Lcom/zte/regex/Pattern$Node;)V
    .locals 4

    .line 3986
    iget v0, p0, Lcom/zte/regex/Pattern$Branch;->size:I

    iget-object v1, p0, Lcom/zte/regex/Pattern$Branch;->atoms:[Lcom/zte/regex/Pattern$Node;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 3987
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/zte/regex/Pattern$Node;

    .line 3988
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3989
    iput-object v0, p0, Lcom/zte/regex/Pattern$Branch;->atoms:[Lcom/zte/regex/Pattern$Node;

    .line 3991
    :cond_0
    iget-object v0, p0, Lcom/zte/regex/Pattern$Branch;->atoms:[Lcom/zte/regex/Pattern$Node;

    iget v1, p0, Lcom/zte/regex/Pattern$Branch;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zte/regex/Pattern$Branch;->size:I

    aput-object p1, v0, v1

    return-void
.end method

.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 3995
    :goto_0
    iget v2, p0, Lcom/zte/regex/Pattern$Branch;->size:I

    if-ge v1, v2, :cond_2

    .line 3996
    iget-object v2, p0, Lcom/zte/regex/Pattern$Branch;->atoms:[Lcom/zte/regex/Pattern$Node;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 3997
    iget-object v2, p0, Lcom/zte/regex/Pattern$Branch;->conn:Lcom/zte/regex/Pattern$Node;

    iget-object v2, v2, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v2, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 3999
    :cond_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 8

    .line 4007
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 4008
    iget v1, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    .line 4009
    iget-boolean v2, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    const v3, 0x7fffffff

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v6, v5

    .line 4013
    :goto_0
    iget v7, p0, Lcom/zte/regex/Pattern$Branch;->size:I

    if-ge v6, v7, :cond_1

    .line 4014
    invoke-virtual {p1}, Lcom/zte/regex/Pattern$TreeInfo;->reset()V

    .line 4015
    iget-object v7, p0, Lcom/zte/regex/Pattern$Branch;->atoms:[Lcom/zte/regex/Pattern$Node;

    aget-object v7, v7, v6

    if-eqz v7, :cond_0

    .line 4016
    invoke-virtual {v7, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    .line 4017
    :cond_0
    iget v7, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4018
    iget v7, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4019
    iget-boolean v7, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    and-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    add-int/2addr v1, v4

    .line 4025
    invoke-virtual {p1}, Lcom/zte/regex/Pattern$TreeInfo;->reset()V

    .line 4026
    iget-object p0, p0, Lcom/zte/regex/Pattern$Branch;->conn:Lcom/zte/regex/Pattern$Node;

    iget-object p0, p0, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    .line 4028
    iget p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 4029
    iget p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    add-int/2addr p0, v1

    iput p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    .line 4030
    iget-boolean p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    and-int/2addr p0, v2

    iput-boolean p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 4031
    iput-boolean v5, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    return v5
.end method
