.class Lcom/zte/regex/Pattern$BnM;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BnM"
.end annotation


# instance fields
.field buffer:[I

.field lastOcc:[I

.field optoSft:[I


# direct methods
.method constructor <init>([I[I[ILcom/zte/regex/Pattern$Node;)V
    .locals 0

    .line 4767
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 4768
    iput-object p1, p0, Lcom/zte/regex/Pattern$BnM;->buffer:[I

    .line 4769
    iput-object p2, p0, Lcom/zte/regex/Pattern$BnM;->lastOcc:[I

    .line 4770
    iput-object p3, p0, Lcom/zte/regex/Pattern$BnM;->optoSft:[I

    .line 4771
    iput-object p4, p0, Lcom/zte/regex/Pattern$BnM;->next:Lcom/zte/regex/Pattern$Node;

    return-void
.end method

.method static optimize(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;
    .locals 8

    .line 4717
    instance-of v0, p0, Lcom/zte/regex/Pattern$Slice;

    if-nez v0, :cond_0

    return-object p0

    .line 4721
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/zte/regex/Pattern$Slice;

    iget-object v0, v0, Lcom/zte/regex/Pattern$Slice;->buffer:[I

    .line 4722
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    return-object p0

    :cond_1
    const/16 v2, 0x80

    .line 4731
    new-array v2, v2, [I

    .line 4732
    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 4737
    aget v5, v0, v4

    and-int/lit8 v5, v5, 0x7f

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v5

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_1
    if-lez v4, :cond_5

    add-int/lit8 v5, v1, -0x1

    :goto_2
    if-lt v5, v4, :cond_3

    .line 4745
    aget v6, v0, v5

    sub-int v7, v5, v4

    aget v7, v0, v7

    if-ne v6, v7, :cond_4

    add-int/lit8 v6, v5, -0x1

    .line 4747
    aput v4, v3, v6

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-lez v5, :cond_4

    add-int/lit8 v5, v5, -0x1

    .line 4758
    aput v4, v3, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .line 4762
    aput v4, v3, v1

    .line 4763
    instance-of v1, p0, Lcom/zte/regex/Pattern$SliceS;

    if-eqz v1, :cond_6

    .line 4764
    new-instance v1, Lcom/zte/regex/Pattern$BnMS;

    iget-object p0, p0, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/zte/regex/Pattern$BnMS;-><init>([I[I[ILcom/zte/regex/Pattern$Node;)V

    return-object v1

    .line 4765
    :cond_6
    new-instance v1, Lcom/zte/regex/Pattern$BnM;

    iget-object p0, p0, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/zte/regex/Pattern$BnM;-><init>([I[I[ILcom/zte/regex/Pattern$Node;)V

    return-object v1
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 8

    .line 4774
    iget-object v0, p0, Lcom/zte/regex/Pattern$BnM;->buffer:[I

    .line 4775
    array-length v1, v0

    .line 4776
    iget v2, p1, Lcom/zte/regex/Matcher;->to:I

    sub-int/2addr v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt p2, v2, :cond_3

    add-int/lit8 v5, v1, -0x1

    :goto_1
    if-ltz v5, :cond_1

    add-int v6, p2, v5

    .line 4782
    invoke-interface {p3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 4783
    aget v7, v0, v5

    if-eq v6, v7, :cond_0

    add-int/lit8 v3, v5, 0x1

    .line 4786
    iget-object v4, p0, Lcom/zte/regex/Pattern$BnM;->lastOcc:[I

    and-int/lit8 v6, v6, 0x7f

    aget v4, v4, v6

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/zte/regex/Pattern$BnM;->optoSft:[I

    aget v4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4791
    :cond_1
    iput p2, p1, Lcom/zte/regex/Matcher;->first:I

    .line 4792
    iget-object v5, p0, Lcom/zte/regex/Pattern$BnM;->next:Lcom/zte/regex/Pattern$Node;

    add-int v6, p2, v1

    invoke-virtual {v5, p1, v6, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4794
    iput p2, p1, Lcom/zte/regex/Matcher;->first:I

    .line 4795
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p2, p1, Lcom/zte/regex/Matcher;->first:I

    aput p2, p0, v3

    .line 4796
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p1, p1, Lcom/zte/regex/Matcher;->last:I

    aput p1, p0, v4

    return v4

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 4804
    :cond_3
    iput-boolean v4, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v3
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 2

    .line 4808
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    iget-object v1, p0, Lcom/zte/regex/Pattern$BnM;->buffer:[I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    const/4 v0, 0x0

    .line 4809
    iput-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 4810
    iget-object p0, p0, Lcom/zte/regex/Pattern$BnM;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
