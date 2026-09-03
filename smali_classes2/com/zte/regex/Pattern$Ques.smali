.class final Lcom/zte/regex/Pattern$Ques;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ques"
.end annotation


# instance fields
.field atom:Lcom/zte/regex/Pattern$Node;

.field type:Lcom/zte/regex/Pattern$Qtype;


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Qtype;)V
    .locals 0

    .line 3487
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 3488
    iput-object p1, p0, Lcom/zte/regex/Pattern$Ques;->atom:Lcom/zte/regex/Pattern$Node;

    .line 3489
    iput-object p2, p0, Lcom/zte/regex/Pattern$Ques;->type:Lcom/zte/regex/Pattern$Qtype;

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    .line 3492
    iget-object v0, p0, Lcom/zte/regex/Pattern$Ques;->type:Lcom/zte/regex/Pattern$Qtype;

    invoke-virtual {v0}, Lcom/zte/regex/Pattern$Qtype;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 3503
    iget-object v0, p0, Lcom/zte/regex/Pattern$Ques;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zte/regex/Pattern$Ques;->next:Lcom/zte/regex/Pattern$Node;

    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 3500
    :cond_1
    iget-object v0, p0, Lcom/zte/regex/Pattern$Ques;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    .line 3501
    :cond_2
    iget-object p0, p0, Lcom/zte/regex/Pattern$Ques;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 3497
    :cond_3
    iget-object v0, p0, Lcom/zte/regex/Pattern$Ques;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zte/regex/Pattern$Ques;->atom:Lcom/zte/regex/Pattern$Node;

    .line 3498
    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/zte/regex/Pattern$Ques;->next:Lcom/zte/regex/Pattern$Node;

    iget p2, p1, Lcom/zte/regex/Matcher;->last:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    .line 3494
    :cond_6
    iget-object v0, p0, Lcom/zte/regex/Pattern$Ques;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zte/regex/Pattern$Ques;->next:Lcom/zte/regex/Pattern$Node;

    iget v3, p1, Lcom/zte/regex/Matcher;->last:I

    invoke-virtual {v0, p1, v3, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object p0, p0, Lcom/zte/regex/Pattern$Ques;->next:Lcom/zte/regex/Pattern$Node;

    .line 3495
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    return v1
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 2

    .line 3507
    iget-object v0, p0, Lcom/zte/regex/Pattern$Ques;->type:Lcom/zte/regex/Pattern$Qtype;

    sget-object v1, Lcom/zte/regex/Pattern$Qtype;->INDEPENDENT:Lcom/zte/regex/Pattern$Qtype;

    if-eq v0, v1, :cond_0

    .line 3508
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 3509
    iget-object v1, p0, Lcom/zte/regex/Pattern$Ques;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    .line 3510
    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    const/4 v0, 0x0

    .line 3511
    iput-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    .line 3512
    iget-object p0, p0, Lcom/zte/regex/Pattern$Ques;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0

    .line 3514
    :cond_0
    iget-object v0, p0, Lcom/zte/regex/Pattern$Ques;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    .line 3515
    iget-object p0, p0, Lcom/zte/regex/Pattern$Ques;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
