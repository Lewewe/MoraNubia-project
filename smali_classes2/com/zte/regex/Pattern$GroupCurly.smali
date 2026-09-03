.class final Lcom/zte/regex/Pattern$GroupCurly;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupCurly"
.end annotation


# instance fields
.field atom:Lcom/zte/regex/Pattern$Node;

.field capture:Z

.field cmax:I

.field cmin:I

.field groupIndex:I

.field localIndex:I

.field type:Lcom/zte/regex/Pattern$Qtype;


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;IILcom/zte/regex/Pattern$Qtype;IIZ)V
    .locals 0

    .line 3760
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 3761
    iput-object p1, p0, Lcom/zte/regex/Pattern$GroupCurly;->atom:Lcom/zte/regex/Pattern$Node;

    .line 3762
    iput-object p4, p0, Lcom/zte/regex/Pattern$GroupCurly;->type:Lcom/zte/regex/Pattern$Qtype;

    .line 3763
    iput p2, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmin:I

    .line 3764
    iput p3, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmax:I

    .line 3765
    iput p5, p0, Lcom/zte/regex/Pattern$GroupCurly;->localIndex:I

    .line 3766
    iput p6, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    .line 3767
    iput-boolean p7, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 9

    .line 3770
    iget-object v0, p1, Lcom/zte/regex/Matcher;->groups:[I

    .line 3771
    iget-object v1, p1, Lcom/zte/regex/Matcher;->locals:[I

    .line 3772
    iget v2, p0, Lcom/zte/regex/Pattern$GroupCurly;->localIndex:I

    aget v3, v1, v2

    .line 3776
    iget-boolean v4, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 3777
    iget v4, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    aget v7, v0, v4

    add-int/2addr v4, v5

    .line 3778
    aget v4, v0, v4

    goto :goto_0

    :cond_0
    move v4, v6

    move v7, v4

    :goto_0
    const/4 v8, -0x1

    .line 3783
    aput v8, v1, v2

    move v2, v6

    .line 3786
    :goto_1
    iget v8, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmin:I

    if-ge v2, v8, :cond_2

    .line 3787
    iget-object v8, p0, Lcom/zte/regex/Pattern$GroupCurly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v8, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3788
    iget-boolean v8, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    if-eqz v8, :cond_1

    .line 3789
    iget v8, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    aput p2, v0, v8

    add-int/2addr v8, v5

    .line 3790
    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    aput p2, v0, v8

    .line 3792
    :cond_1
    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v6, v5

    :cond_3
    if-eqz v6, :cond_6

    .line 3799
    iget-object v2, p0, Lcom/zte/regex/Pattern$GroupCurly;->type:Lcom/zte/regex/Pattern$Qtype;

    sget-object v6, Lcom/zte/regex/Pattern$Qtype;->GREEDY:Lcom/zte/regex/Pattern$Qtype;

    if-ne v2, v6, :cond_4

    .line 3800
    iget v2, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmin:I

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/zte/regex/Pattern$GroupCurly;->match0(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z

    move-result v6

    goto :goto_2

    .line 3801
    :cond_4
    iget-object v2, p0, Lcom/zte/regex/Pattern$GroupCurly;->type:Lcom/zte/regex/Pattern$Qtype;

    sget-object v6, Lcom/zte/regex/Pattern$Qtype;->LAZY:Lcom/zte/regex/Pattern$Qtype;

    if-ne v2, v6, :cond_5

    .line 3802
    iget v2, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmin:I

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/zte/regex/Pattern$GroupCurly;->match1(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z

    move-result v6

    goto :goto_2

    .line 3804
    :cond_5
    iget v2, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmin:I

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/zte/regex/Pattern$GroupCurly;->match2(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z

    move-result v6

    :cond_6
    :goto_2
    if-nez v6, :cond_7

    .line 3808
    iget p1, p0, Lcom/zte/regex/Pattern$GroupCurly;->localIndex:I

    aput v3, v1, p1

    .line 3809
    iget-boolean p1, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    if-eqz p1, :cond_7

    .line 3810
    iget p0, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    aput v7, v0, p0

    add-int/2addr p0, v5

    .line 3811
    aput v4, v0, p0

    :cond_7
    return v6
.end method

.method match0(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z
    .locals 8

    .line 3820
    iget-object v0, p1, Lcom/zte/regex/Matcher;->groups:[I

    .line 3823
    iget-boolean v1, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3824
    iget v1, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    aget v3, v0, v1

    add-int/2addr v1, v2

    .line 3825
    aget v1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v1, v3

    .line 3828
    :goto_0
    iget v4, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmax:I

    if-lt p3, v4, :cond_1

    goto/16 :goto_2

    .line 3830
    :cond_1
    iget-object v4, p0, Lcom/zte/regex/Pattern$GroupCurly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v4, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_2

    .line 3832
    :cond_2
    iget v4, p1, Lcom/zte/regex/Matcher;->last:I

    sub-int/2addr v4, p2

    if-gtz v4, :cond_4

    .line 3834
    iget-boolean p3, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    if-eqz p3, :cond_3

    .line 3835
    iget p3, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    aput p2, v0, p3

    add-int/2addr p3, v2

    add-int v5, p2, v4

    .line 3836
    aput v5, v0, p3

    :cond_3
    add-int/2addr p2, v4

    goto :goto_2

    :cond_4
    move v5, p3

    .line 3842
    :cond_5
    iget-boolean v6, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    if-eqz v6, :cond_6

    .line 3843
    iget v6, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    aput p2, v0, v6

    add-int/2addr v6, v2

    add-int v7, p2, v4

    .line 3844
    aput v7, v0, v6

    :cond_6
    add-int/2addr p2, v4

    add-int/2addr v5, v2

    .line 3847
    iget v6, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmax:I

    if-lt v5, v6, :cond_7

    goto :goto_1

    .line 3849
    :cond_7
    iget-object v6, p0, Lcom/zte/regex/Pattern$GroupCurly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v6, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    add-int v6, p2, v4

    .line 3851
    iget v7, p1, Lcom/zte/regex/Matcher;->last:I

    if-eq v6, v7, :cond_5

    .line 3852
    invoke-virtual {p0, p1, p2, v5, p4}, Lcom/zte/regex/Pattern$GroupCurly;->match0(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    return v2

    :cond_9
    :goto_1
    if-le v5, p3, :cond_d

    .line 3858
    iget-object v6, p0, Lcom/zte/regex/Pattern$GroupCurly;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v6, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3859
    iget-boolean p1, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    if-eqz p1, :cond_a

    .line 3860
    iget p0, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    add-int/lit8 p1, p0, 0x1

    aput p2, v0, p1

    sub-int/2addr p2, v4

    .line 3861
    aput p2, v0, p0

    :cond_a
    return v2

    :cond_b
    sub-int/2addr p2, v4

    .line 3867
    iget-boolean v6, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    if-eqz v6, :cond_c

    .line 3868
    iget v6, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    add-int/lit8 v7, v6, 0x1

    aput p2, v0, v7

    sub-int v7, p2, v4

    .line 3869
    aput v7, v0, v6

    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3876
    :cond_d
    :goto_2
    iget-boolean p3, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    if-eqz p3, :cond_e

    .line 3877
    iget p3, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    aput v3, v0, p3

    add-int/2addr p3, v2

    .line 3878
    aput v1, v0, p3

    .line 3880
    :cond_e
    iget-object p0, p0, Lcom/zte/regex/Pattern$GroupCurly;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method match1(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z
    .locals 3

    .line 3885
    :goto_0
    iget-object v0, p0, Lcom/zte/regex/Pattern$GroupCurly;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3887
    :cond_0
    iget v0, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmax:I

    const/4 v2, 0x0

    if-lt p3, v0, :cond_1

    return v2

    .line 3889
    :cond_1
    iget-object v0, p0, Lcom/zte/regex/Pattern$GroupCurly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 3891
    :cond_2
    iget v0, p1, Lcom/zte/regex/Matcher;->last:I

    if-ne p2, v0, :cond_3

    return v2

    .line 3893
    :cond_3
    iget-boolean v0, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    if-eqz v0, :cond_4

    .line 3894
    iget-object v0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v2, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    aput p2, v0, v2

    .line 3895
    iget-object p2, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v0, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/zte/regex/Matcher;->last:I

    aput v1, p2, v0

    .line 3897
    :cond_4
    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method match2(Lcom/zte/regex/Matcher;IILjava/lang/CharSequence;)Z
    .locals 3

    .line 3903
    :goto_0
    iget v0, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmax:I

    if-ge p3, v0, :cond_3

    .line 3904
    iget-object v0, p0, Lcom/zte/regex/Pattern$GroupCurly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3907
    :cond_0
    iget-boolean v0, p0, Lcom/zte/regex/Pattern$GroupCurly;->capture:Z

    if-eqz v0, :cond_1

    .line 3908
    iget-object v0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v1, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    aput p2, v0, v1

    .line 3909
    iget-object v0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v1, p0, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p1, Lcom/zte/regex/Matcher;->last:I

    aput v2, v0, v1

    .line 3911
    :cond_1
    iget v0, p1, Lcom/zte/regex/Matcher;->last:I

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 3914
    :cond_2
    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 3916
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/zte/regex/Pattern$GroupCurly;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p4}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 6

    .line 3920
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 3921
    iget v1, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    .line 3922
    iget-boolean v2, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 3923
    iget-boolean v3, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    .line 3924
    invoke-virtual {p1}, Lcom/zte/regex/Pattern$TreeInfo;->reset()V

    .line 3926
    iget-object v4, p0, Lcom/zte/regex/Pattern$GroupCurly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v4, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    .line 3928
    iget v4, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    iget v5, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmin:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    if-ge v4, v0, :cond_0

    const v4, 0xfffffff

    .line 3932
    :cond_0
    iput v4, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 3934
    iget-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3935
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    iget v4, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmax:I

    mul-int/2addr v0, v4

    add-int/2addr v0, v1

    .line 3936
    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    if-ge v0, v1, :cond_2

    .line 3938
    iput-boolean v2, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    goto :goto_0

    .line 3941
    :cond_1
    iput-boolean v2, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 3944
    :cond_2
    :goto_0
    iget-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmin:I

    iget v1, p0, Lcom/zte/regex/Pattern$GroupCurly;->cmax:I

    if-ne v0, v1, :cond_3

    .line 3945
    iput-boolean v3, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    goto :goto_1

    .line 3947
    :cond_3
    iput-boolean v2, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    .line 3949
    :goto_1
    iget-object p0, p0, Lcom/zte/regex/Pattern$GroupCurly;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
