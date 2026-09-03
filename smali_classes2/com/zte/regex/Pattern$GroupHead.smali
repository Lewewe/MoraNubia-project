.class final Lcom/zte/regex/Pattern$GroupHead;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupHead"
.end annotation


# instance fields
.field localIndex:I

.field tail:Lcom/zte/regex/Pattern$GroupTail;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 4048
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 4049
    iput p1, p0, Lcom/zte/regex/Pattern$GroupHead;->localIndex:I

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 3

    .line 4052
    iget-object v0, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v1, p0, Lcom/zte/regex/Pattern$GroupHead;->localIndex:I

    aget v0, v0, v1

    .line 4053
    iget-object v1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget v2, p0, Lcom/zte/regex/Pattern$GroupHead;->localIndex:I

    aput p2, v1, v2

    .line 4054
    iget-object v1, p0, Lcom/zte/regex/Pattern$GroupHead;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p2

    .line 4055
    iget-object p1, p1, Lcom/zte/regex/Matcher;->locals:[I

    iget p0, p0, Lcom/zte/regex/Pattern$GroupHead;->localIndex:I

    aput v0, p1, p0

    return p2
.end method
