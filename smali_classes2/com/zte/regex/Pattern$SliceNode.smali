.class Lcom/zte/regex/Pattern$SliceNode;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SliceNode"
.end annotation


# instance fields
.field buffer:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    .line 3324
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 3325
    iput-object p1, p0, Lcom/zte/regex/Pattern$SliceNode;->buffer:[I

    return-void
.end method


# virtual methods
.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 2

    .line 3328
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    iget-object v1, p0, Lcom/zte/regex/Pattern$SliceNode;->buffer:[I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 3329
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    iget-object v1, p0, Lcom/zte/regex/Pattern$SliceNode;->buffer:[I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    .line 3330
    iget-object p0, p0, Lcom/zte/regex/Pattern$SliceNode;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
