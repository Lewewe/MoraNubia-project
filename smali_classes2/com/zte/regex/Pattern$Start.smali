.class Lcom/zte/regex/Pattern$Start;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Start"
.end annotation


# instance fields
.field minLength:I


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;)V
    .locals 1

    .line 2860
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 2861
    iput-object p1, p0, Lcom/zte/regex/Pattern$Start;->next:Lcom/zte/regex/Pattern$Node;

    .line 2862
    new-instance p1, Lcom/zte/regex/Pattern$TreeInfo;

    invoke-direct {p1}, Lcom/zte/regex/Pattern$TreeInfo;-><init>()V

    .line 2863
    iget-object v0, p0, Lcom/zte/regex/Pattern$Start;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    .line 2864
    iget p1, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    iput p1, p0, Lcom/zte/regex/Pattern$Start;->minLength:I

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    .line 2867
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    iget v1, p0, Lcom/zte/regex/Pattern$Start;->minLength:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p2, v0, :cond_0

    .line 2868
    iput-boolean v2, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v1

    .line 2871
    :cond_0
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    iget v3, p0, Lcom/zte/regex/Pattern$Start;->minLength:I

    sub-int/2addr v0, v3

    :goto_0
    if-gt p2, v0, :cond_2

    .line 2873
    iget-object v3, p0, Lcom/zte/regex/Pattern$Start;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v3, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2874
    iput p2, p1, Lcom/zte/regex/Matcher;->first:I

    .line 2875
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p2, p1, Lcom/zte/regex/Matcher;->first:I

    aput p2, p0, v1

    .line 2876
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p1, p1, Lcom/zte/regex/Matcher;->last:I

    aput p1, p0, v2

    return v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2880
    :cond_2
    iput-boolean v2, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v1
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 0

    .line 2884
    iget-object p0, p0, Lcom/zte/regex/Pattern$Start;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    const/4 p0, 0x0

    .line 2885
    iput-boolean p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 2886
    iput-boolean p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    return p0
.end method
