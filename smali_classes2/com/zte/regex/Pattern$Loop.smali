.class Lcom/zte/regex/Pattern$Loop;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Loop"
.end annotation


# instance fields
.field beginIndex:I

.field body:Lcom/zte/regex/Pattern$Node;

.field cmax:I

.field cmin:I

.field countIndex:I

.field posIndex:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 4128
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 4129
    iput p1, p0, Lcom/zte/regex/Pattern$Loop;->countIndex:I

    .line 4130
    iput p2, p0, Lcom/zte/regex/Pattern$Loop;->beginIndex:I

    const/4 p1, -0x1

    .line 4131
    iput p1, p0, Lcom/zte/regex/Pattern$Loop;->posIndex:I

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 5

    .line 4135
    iget-object v0, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v1, p0, Lcom/zte/regex/Pattern$Loop;->beginIndex:I

    aget v0, v0, v1

    if-le p2, v0, :cond_4

    .line 4136
    iget-object v0, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v1, p0, Lcom/zte/regex/Pattern$Loop;->countIndex:I

    aget v0, v0, v1

    .line 4140
    iget v1, p0, Lcom/zte/regex/Pattern$Loop;->cmin:I

    if-ge v0, v1, :cond_1

    .line 4141
    iget-object v1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v2, p0, Lcom/zte/regex/Pattern$Loop;->countIndex:I

    add-int/lit8 v3, v0, 0x1

    aput v3, v1, v2

    .line 4142
    iget-object v1, p0, Lcom/zte/regex/Pattern$Loop;->body:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4146
    iget-object p1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget p0, p0, Lcom/zte/regex/Pattern$Loop;->countIndex:I

    aput v0, p1, p0

    :cond_0
    return p2

    .line 4153
    :cond_1
    iget v1, p0, Lcom/zte/regex/Pattern$Loop;->cmax:I

    if-ge v0, v1, :cond_4

    .line 4158
    iget v1, p0, Lcom/zte/regex/Pattern$Loop;->posIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Lcom/zte/regex/Matcher;->localsPos:[Lcom/zte/regex/IntHashSet;

    iget v3, p0, Lcom/zte/regex/Pattern$Loop;->posIndex:I

    aget-object v1, v1, v3

    .line 4159
    invoke-virtual {v1, p2}, Lcom/zte/regex/IntHashSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4160
    iget-object p0, p0, Lcom/zte/regex/Pattern$Loop;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 4162
    :cond_2
    iget-object v1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v3, p0, Lcom/zte/regex/Pattern$Loop;->countIndex:I

    add-int/lit8 v4, v0, 0x1

    aput v4, v1, v3

    .line 4163
    iget-object v1, p0, Lcom/zte/regex/Pattern$Loop;->body:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x1

    return p0

    .line 4168
    :cond_3
    iget-object v1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v3, p0, Lcom/zte/regex/Pattern$Loop;->countIndex:I

    aput v0, v1, v3

    .line 4170
    iget v0, p0, Lcom/zte/regex/Pattern$Loop;->posIndex:I

    if-eq v0, v2, :cond_4

    .line 4171
    iget-object v0, p1, Lcom/zte/regex/Matcher;->localsPos:[Lcom/zte/regex/IntHashSet;

    iget v1, p0, Lcom/zte/regex/Pattern$Loop;->posIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/zte/regex/IntHashSet;->add(I)V

    .line 4175
    :cond_4
    iget-object p0, p0, Lcom/zte/regex/Pattern$Loop;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method matchInit(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 4

    .line 4178
    iget-object v0, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v1, p0, Lcom/zte/regex/Pattern$Loop;->countIndex:I

    aget v0, v0, v1

    .line 4180
    iget v1, p0, Lcom/zte/regex/Pattern$Loop;->posIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/zte/regex/Matcher;->localsPos:[Lcom/zte/regex/IntHashSet;

    iget v2, p0, Lcom/zte/regex/Pattern$Loop;->posIndex:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 4181
    iget-object v1, p1, Lcom/zte/regex/Matcher;->localsPos:[Lcom/zte/regex/IntHashSet;

    iget v2, p0, Lcom/zte/regex/Pattern$Loop;->posIndex:I

    new-instance v3, Lcom/zte/regex/IntHashSet;

    invoke-direct {v3}, Lcom/zte/regex/IntHashSet;-><init>()V

    aput-object v3, v1, v2

    .line 4183
    :cond_0
    iget v1, p0, Lcom/zte/regex/Pattern$Loop;->cmin:I

    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 4184
    iget-object v1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v3, p0, Lcom/zte/regex/Pattern$Loop;->countIndex:I

    aput v2, v1, v3

    .line 4185
    iget-object v1, p0, Lcom/zte/regex/Pattern$Loop;->body:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    goto :goto_0

    .line 4186
    :cond_1
    iget v1, p0, Lcom/zte/regex/Pattern$Loop;->cmax:I

    if-lez v1, :cond_3

    .line 4187
    iget-object v1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v3, p0, Lcom/zte/regex/Pattern$Loop;->countIndex:I

    aput v2, v1, v3

    .line 4188
    iget-object v1, p0, Lcom/zte/regex/Pattern$Loop;->body:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4190
    iget-object v1, p0, Lcom/zte/regex/Pattern$Loop;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    goto :goto_0

    :cond_2
    move p2, v1

    goto :goto_0

    .line 4192
    :cond_3
    iget-object v1, p0, Lcom/zte/regex/Pattern$Loop;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    .line 4194
    :goto_0
    iget-object p1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget p0, p0, Lcom/zte/regex/Pattern$Loop;->countIndex:I

    aput v0, p1, p0

    return p2
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 0

    const/4 p0, 0x0

    .line 4198
    iput-boolean p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 4199
    iput-boolean p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    return p0
.end method
