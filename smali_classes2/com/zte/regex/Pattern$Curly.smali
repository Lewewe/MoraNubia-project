.class final Lcom/zte/regex/Pattern$Curly;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Curly"
.end annotation


# instance fields
.field atom:Lcom/zte/regex/Pattern$Node;

.field cmax:I

.field cmin:I

.field type:Lcom/zte/regex/Pattern$Qtype;


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;IILcom/zte/regex/Pattern$Qtype;)V
    .locals 0

    .line 3613
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 3614
    iput-object p1, p0, Lcom/zte/regex/Pattern$Curly;->atom:Lcom/zte/regex/Pattern$Node;

    .line 3615
    iput-object p4, p0, Lcom/zte/regex/Pattern$Curly;->type:Lcom/zte/regex/Pattern$Qtype;

    .line 3616
    iput p2, p0, Lcom/zte/regex/Pattern$Curly;->cmin:I

    .line 3617
    iput p3, p0, Lcom/zte/regex/Pattern$Curly;->cmax:I

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 3621
    :goto_0
    iget v2, p0, Lcom/zte/regex/Pattern$Curly;->cmin:I

    if-ge v1, v2, :cond_1

    .line 3622
    iget-object v2, p0, Lcom/zte/regex/Pattern$Curly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v2, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3623
    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 3628
    :cond_1
    iget-object v0, p0, Lcom/zte/regex/Pattern$Curly;->type:Lcom/zte/regex/Pattern$Qtype;

    sget-object v2, Lcom/zte/regex/Pattern$Qtype;->GREEDY:Lcom/zte/regex/Pattern$Qtype;

    if-ne v0, v2, :cond_2

    .line 3629
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/zte/regex/Pattern$Curly;->match0(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 3630
    :cond_2
    iget-object v0, p0, Lcom/zte/regex/Pattern$Curly;->type:Lcom/zte/regex/Pattern$Qtype;

    sget-object v2, Lcom/zte/regex/Pattern$Qtype;->LAZY:Lcom/zte/regex/Pattern$Qtype;

    if-ne v0, v2, :cond_3

    .line 3631
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/zte/regex/Pattern$Curly;->match1(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 3633
    :cond_3
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/zte/regex/Pattern$Curly;->match2(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method match0(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z
    .locals 5

    .line 3639
    iget v0, p0, Lcom/zte/regex/Pattern$Curly;->cmax:I

    if-lt p3, v0, :cond_0

    .line 3642
    iget-object p0, p0, Lcom/zte/regex/Pattern$Curly;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 3645
    :cond_0
    iget-object v0, p0, Lcom/zte/regex/Pattern$Curly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3647
    iget v0, p1, Lcom/zte/regex/Matcher;->last:I

    sub-int/2addr v0, p2

    if-nez v0, :cond_1

    goto :goto_2

    .line 3651
    :cond_1
    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    add-int/lit8 v1, p3, 0x1

    .line 3654
    :goto_0
    iget v2, p0, Lcom/zte/regex/Pattern$Curly;->cmax:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 3655
    iget-object v2, p0, Lcom/zte/regex/Pattern$Curly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v2, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int v2, p2, v0

    .line 3657
    iget v4, p1, Lcom/zte/regex/Matcher;->last:I

    if-eq v2, v4, :cond_3

    .line 3658
    iget v2, p1, Lcom/zte/regex/Matcher;->last:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, p1, v2, v4, p4}, Lcom/zte/regex/Pattern$Curly;->match0(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_0

    :cond_4
    :goto_1
    if-lt v1, p3, :cond_6

    .line 3667
    iget-object v2, p0, Lcom/zte/regex/Pattern$Curly;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v2, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v3

    :cond_5
    sub-int/2addr p2, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 3674
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/zte/regex/Pattern$Curly;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method match1(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z
    .locals 2

    .line 3682
    :goto_0
    iget-object v0, p0, Lcom/zte/regex/Pattern$Curly;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3685
    :cond_0
    iget v0, p0, Lcom/zte/regex/Pattern$Curly;->cmax:I

    const/4 v1, 0x0

    if-lt p3, v0, :cond_1

    return v1

    .line 3688
    :cond_1
    iget-object v0, p0, Lcom/zte/regex/Pattern$Curly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 3691
    :cond_2
    iget v0, p1, Lcom/zte/regex/Matcher;->last:I

    if-ne p2, v0, :cond_3

    return v1

    .line 3694
    :cond_3
    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method match2(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z
    .locals 1

    .line 3699
    :goto_0
    iget v0, p0, Lcom/zte/regex/Pattern$Curly;->cmax:I

    if-ge p3, v0, :cond_2

    .line 3700
    iget-object v0, p0, Lcom/zte/regex/Pattern$Curly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3702
    :cond_0
    iget v0, p1, Lcom/zte/regex/Matcher;->last:I

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 3704
    :cond_1
    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 3706
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/zte/regex/Pattern$Curly;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 6

    .line 3710
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 3711
    iget v1, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    .line 3712
    iget-boolean v2, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 3713
    iget-boolean v3, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    .line 3714
    invoke-virtual {p1}, Lcom/zte/regex/Pattern$TreeInfo;->reset()V

    .line 3716
    iget-object v4, p0, Lcom/zte/regex/Pattern$Curly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v4, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    .line 3718
    iget v4, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    iget v5, p0, Lcom/zte/regex/Pattern$Curly;->cmin:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    if-ge v4, v0, :cond_0

    const v4, 0xfffffff

    .line 3722
    :cond_0
    iput v4, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 3724
    iget-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3725
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    iget v4, p0, Lcom/zte/regex/Pattern$Curly;->cmax:I

    mul-int/2addr v0, v4

    add-int/2addr v0, v1

    .line 3726
    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    if-ge v0, v1, :cond_2

    .line 3728
    iput-boolean v2, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    goto :goto_0

    .line 3731
    :cond_1
    iput-boolean v2, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 3734
    :cond_2
    :goto_0
    iget-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/zte/regex/Pattern$Curly;->cmin:I

    iget v1, p0, Lcom/zte/regex/Pattern$Curly;->cmax:I

    if-ne v0, v1, :cond_3

    .line 3735
    iput-boolean v3, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    goto :goto_1

    .line 3737
    :cond_3
    iput-boolean v2, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    .line 3738
    :goto_1
    iget-object p0, p0, Lcom/zte/regex/Pattern$Curly;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
