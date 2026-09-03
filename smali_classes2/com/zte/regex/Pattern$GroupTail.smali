.class final Lcom/zte/regex/Pattern$GroupTail;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupTail"
.end annotation


# instance fields
.field groupIndex:I

.field localIndex:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 4071
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 4072
    iput p1, p0, Lcom/zte/regex/Pattern$GroupTail;->localIndex:I

    add-int/2addr p2, p2

    .line 4073
    iput p2, p0, Lcom/zte/regex/Pattern$GroupTail;->groupIndex:I

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 6

    .line 4076
    iget-object v0, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v1, p0, Lcom/zte/regex/Pattern$GroupTail;->localIndex:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    .line 4080
    iget-object v2, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v3, p0, Lcom/zte/regex/Pattern$GroupTail;->groupIndex:I

    aget v2, v2, v3

    .line 4081
    iget-object v3, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v4, p0, Lcom/zte/regex/Pattern$GroupTail;->groupIndex:I

    add-int/2addr v4, v1

    aget v3, v3, v4

    .line 4083
    iget-object v4, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v5, p0, Lcom/zte/regex/Pattern$GroupTail;->groupIndex:I

    aput v0, v4, v5

    .line 4084
    iget-object v0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget v4, p0, Lcom/zte/regex/Pattern$GroupTail;->groupIndex:I

    add-int/2addr v4, v1

    aput p2, v0, v4

    .line 4085
    iget-object v0, p0, Lcom/zte/regex/Pattern$GroupTail;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    .line 4088
    :cond_0
    iget-object p2, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p3, p0, Lcom/zte/regex/Pattern$GroupTail;->groupIndex:I

    aput v2, p2, p3

    .line 4089
    iget-object p1, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p0, p0, Lcom/zte/regex/Pattern$GroupTail;->groupIndex:I

    add-int/2addr p0, v1

    aput v3, p1, p0

    const/4 p0, 0x0

    return p0

    .line 4094
    :cond_1
    iput p2, p1, Lcom/zte/regex/Matcher;->last:I

    return v1
.end method
