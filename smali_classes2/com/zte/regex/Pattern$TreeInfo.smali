.class final Lcom/zte/regex/Pattern$TreeInfo;
.super Ljava/lang/Object;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeInfo"
.end annotation


# instance fields
.field deterministic:Z

.field maxLength:I

.field maxValid:Z

.field minLength:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    invoke-virtual {p0}, Lcom/zte/regex/Pattern$TreeInfo;->reset()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1098
    iput v0, p0, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    .line 1099
    iput v0, p0, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    const/4 v0, 0x1

    .line 1100
    iput-boolean v0, p0, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    .line 1101
    iput-boolean v0, p0, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    return-void
.end method
